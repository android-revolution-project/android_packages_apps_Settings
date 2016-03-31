.class public Lcom/android/settings/sim/MultiSimEnablerPreference;
.super Landroid/preference/SwitchPreference;
.source "MultiSimEnablerPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final SUB_CHANGE_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private mClicking:Z

.field private mConfirmDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mConfirmDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConfirmationDialog:Landroid/app/AlertDialog;

.field private mExplicitlyDisabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mParentHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mSir:Landroid/telephony/SubInfoRecord;

.field private mSlotId:I

.field private mSwitch:Landroid/widget/Switch;

.field private mTargetState:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/sim/MultiSimEnablerPreference;->SUB_CHANGE_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/SubInfoRecord;Landroid/os/Handler;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sir"    # Landroid/telephony/SubInfoRecord;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 84
    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mTargetState:Ljava/lang/Boolean;

    .line 85
    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    .line 86
    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    .line 87
    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 96
    iput-boolean v2, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mExplicitlyDisabled:Z

    .line 412
    new-instance v0, Lcom/android/settings/sim/MultiSimEnablerPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/MultiSimEnablerPreference$2;-><init>(Lcom/android/settings/sim/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 424
    new-instance v0, Lcom/android/settings/sim/MultiSimEnablerPreference$3;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/MultiSimEnablerPreference$3;-><init>(Lcom/android/settings/sim/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 433
    new-instance v0, Lcom/android/settings/sim/MultiSimEnablerPreference$4;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/MultiSimEnablerPreference$4;-><init>(Lcom/android/settings/sim/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 455
    new-instance v0, Lcom/android/settings/sim/MultiSimEnablerPreference$5;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/MultiSimEnablerPreference$5;-><init>(Lcom/android/settings/sim/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constructor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 102
    iput p4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSlotId:I

    .line 103
    iput-object p2, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    .line 104
    iput-object p3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    .line 105
    invoke-virtual {p0, p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 106
    invoke-virtual {p0, v2}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setPersistent(Z)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/MultiSimEnablerPreference;)Landroid/telephony/SubInfoRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/sim/MultiSimEnablerPreference;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->sendSubConfigurationRequest(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/sim/MultiSimEnablerPreference;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->updateCheckedState(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings/sim/MultiSimEnablerPreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/sim/MultiSimEnablerPreference;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/sim/MultiSimEnablerPreference;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mTargetState:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/sim/MultiSimEnablerPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->processSetUiccDone()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/sim/MultiSimEnablerPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/sim/MultiSimEnablerPreference;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private configureSubscription(Z)Z
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    const-string v3, "APM is on, EXIT!"

    invoke-direct {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 304
    const v3, 0x7f090270

    invoke-direct {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->showToast(I)V

    .line 331
    :goto_0
    return v2

    .line 307
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 308
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 309
    .local v1, "subId":[J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    aget-wide v6, v1, v2

    invoke-virtual {v4, v6, v7}, Landroid/telephony/TelephonyManager;->getCallState(J)I

    move-result v4

    if-eqz v4, :cond_1

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call state for phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not idle, EXIT!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 312
    const v3, 0x7f090271

    invoke-direct {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->showToast(I)V

    goto :goto_0

    .line 307
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 317
    .end local v1    # "subId":[J
    :cond_2
    if-nez p1, :cond_4

    .line 318
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getActivatedSubInfoCount()I

    move-result v4

    if-le v4, v3, :cond_3

    .line 319
    const-string v2, "More than one sub is active, Deactivation possible."

    invoke-direct {p0, v2}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->showDisableConfirmationDialog()V

    :goto_2
    move v2, v3

    .line 331
    goto :goto_0

    .line 322
    :cond_3
    const-string v3, "Only one sub is active. Deactivation not possible."

    invoke-direct {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 323
    const v3, 0x7f090272

    invoke-direct {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->showToast(I)V

    goto :goto_0

    .line 327
    :cond_4
    const-string v2, "Activate the sub"

    invoke-direct {p0, v2}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->sendSubConfigurationRequest(Z)V

    goto :goto_2
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 406
    :cond_0
    return-void
.end method

.method private getActivatedSubInfoCount()I
    .locals 6

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "activeSubInfoCount":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v3

    .line 292
    .local v3, "subInfoLists":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v3, :cond_1

    .line 293
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubInfoRecord;

    .line 294
    .local v2, "subInfo":Landroid/telephony/SubInfoRecord;
    iget v4, v2, Landroid/telephony/SubInfoRecord;->mStatus:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "subInfo":Landroid/telephony/SubInfoRecord;
    :cond_1
    return v0
.end method

.method private getSimDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    iget-object v0, v0, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    .line 266
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090273

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hasCard()Z
    .locals 2

    .prologue
    .line 232
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCurrentSubValid()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 241
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->isAirplaneModeOn()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->hasCard()Z

    move-result v4

    if-nez v4, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v3

    .line 245
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v2

    .line 246
    .local v2, "sirList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v2, :cond_0

    .line 250
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubInfoRecord;

    .line 251
    .local v1, "sir":Landroid/telephony/SubInfoRecord;
    if-eqz v1, :cond_2

    iget v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSlotId:I

    iget v5, v1, Landroid/telephony/SubInfoRecord;->slotId:I

    if-ne v4, v5, :cond_2

    .line 252
    iput-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    .line 257
    .end local v1    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    iget-wide v4, v4, Landroid/telephony/SubInfoRecord;->subId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    iget v4, v4, Landroid/telephony/SubInfoRecord;->slotId:I

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    iget v4, v4, Landroid/telephony/SubInfoRecord;->mStatus:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiSimEnablerPreference("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void
.end method

.method private processSetUiccDone()V
    .locals 3

    .prologue
    const/16 v2, 0x7d0

    .line 359
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/sim/MultiSimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 360
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/sim/MultiSimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mTargetState:Ljava/lang/Boolean;

    .line 362
    iget-boolean v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mReceiverRegistered:Z

    .line 366
    :cond_0
    return-void
.end method

.method private sendMessage(ILandroid/os/Handler;I)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I

    .prologue
    .line 227
    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 228
    .local v0, "message":Landroid/os/Message;
    int-to-long v2, p3

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 229
    return-void
.end method

.method private sendSubConfigurationRequest(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mTargetState:Ljava/lang/Boolean;

    .line 344
    invoke-direct {p0, p1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->showProgressDialog(Z)V

    .line 346
    if-eqz p1, :cond_2

    .line 347
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    iget-wide v0, v0, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->activateSubId(J)V

    .line 352
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/sim/MultiSimEnablerPreference;->SUB_CHANGE_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mReceiverRegistered:Z

    goto :goto_0

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    iget-wide v0, v0, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->deactivateSubId(J)V

    goto :goto_1
.end method

.method private showDisableConfirmationDialog()V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 373
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getSimDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09026f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090276

    iget-object v2, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    iget-object v2, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    .line 381
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 382
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 383
    return-void
.end method

.method private showProgressDialog(Z)V
    .locals 6
    .param p1, "enabling"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 386
    if-eqz p1, :cond_0

    const v0, 0x7f090274

    .line 389
    .local v0, "stateTextResId":I
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->dismissProgressDialog()V

    .line 391
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 392
    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 393
    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getSimDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 395
    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 396
    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 398
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7530

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 399
    return-void

    .line 386
    .end local v0    # "stateTextResId":I
    :cond_0
    const v0, 0x7f090275

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "textResId"    # I

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 336
    return-void
.end method

.method private updateCheckedState(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 283
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 286
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 287
    return-void
.end method

.method private updateSummary()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 271
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    iget v6, v6, Landroid/telephony/SubInfoRecord;->mStatus:I

    if-ne v6, v4, :cond_0

    move v0, v4

    .line 272
    .local v0, "isActivated":Z
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSummary: subId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    iget-wide v8, v7, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isActivated = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " slot id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSlotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 275
    const v6, 0x7f090c0e

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSlotId:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v1, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "simSlot":Ljava/lang/String;
    const v6, 0x7f090c07

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v5

    iget-object v5, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    iget-object v5, v5, Landroid/telephony/SubInfoRecord;->number:Ljava/lang/String;

    aput-object v5, v7, v4

    invoke-virtual {v1, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "summary":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 278
    invoke-direct {p0, v0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->updateCheckedState(Z)V

    .line 279
    return-void

    .end local v0    # "isActivated":Z
    .end local v2    # "simSlot":Ljava/lang/String;
    .end local v3    # "summary":Ljava/lang/String;
    :cond_0
    move v0, v5

    .line 271
    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mReceiverRegistered:Z

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->dismissProgressDialog()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    .line 139
    :cond_1
    return-void
.end method

.method public createEditDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 142
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 145
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f04007e

    invoke-virtual {v3, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 146
    .local v2, "dialogLayout":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 148
    const v8, 0x7f100150

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 149
    .local v4, "nameText":Landroid/widget/EditText;
    iget-object v8, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    iget-object v8, v8, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const v8, 0x7f10002b

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 152
    .local v5, "numberView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    iget-object v8, v8, Landroid/telephony/SubInfoRecord;->number:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const v8, 0x7f100151

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 155
    .local v1, "carrierView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 157
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    iget-object v8, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    iget-wide v8, v8, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-virtual {v7, v8, v9}, Landroid/telephony/TelephonyManager;->getSimOperatorName(J)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "spn":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    iget-wide v8, v8, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-virtual {v7, v8, v9}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(J)Z

    move-result v8

    if-nez v8, :cond_0

    .line 162
    iget-object v8, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    iget-wide v8, v8, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-virtual {v7, v8, v9}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(J)Ljava/lang/String;

    move-result-object v6

    .line 164
    :cond_0
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const v8, 0x7f090c11

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 168
    const v8, 0x7f090453

    new-instance v9, Lcom/android/settings/sim/MultiSimEnablerPreference$1;

    invoke-direct {v9, p0, v2, v4}, Lcom/android/settings/sim/MultiSimEnablerPreference$1;-><init>(Lcom/android/settings/sim/MultiSimEnablerPreference;Landroid/view/View;Landroid/widget/EditText;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    const v8, 0x7f090450

    invoke-virtual {v0, v8, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 190
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 201
    const v0, 0x1020360

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    .line 202
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->update()V

    .line 205
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mClicking:Z

    .line 222
    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mClicking:Z

    .line 224
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 209
    iget-boolean v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mClicking:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mExplicitlyDisabled:Z

    if-eqz v1, :cond_1

    .line 210
    :cond_0
    const/4 v1, 0x0

    .line 216
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v1

    .line 213
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 214
    .local v0, "checked":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, v0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->configureSubscription(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public setExplicitlyDisabled(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .prologue
    .line 193
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 194
    iput-boolean p1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mExplicitlyDisabled:Z

    .line 195
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->isCurrentSubValid()Z

    move-result v0

    .line 113
    .local v0, "isSubValid":Z
    invoke-virtual {p0, v0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setEnabled(Z)V

    .line 114
    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 115
    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mExplicitlyDisabled:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 118
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update() isSubValid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 119
    if-eqz v0, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getSimDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->updateSummary()V

    .line 127
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 115
    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f090c0e

    new-array v2, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSlotId:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    const v1, 0x7f090c0f

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setSummary(I)V

    goto :goto_1
.end method
