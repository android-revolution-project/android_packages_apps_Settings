.class Lcom/android/settings/sim/SimSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "action":Ljava/lang/String;
    const-string v4, "SimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 136
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    # invokes: Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V
    invoke-static {v4}, Lcom/android/settings/sim/SimSettings;->access$000(Lcom/android/settings/sim/SimSettings;)V

    .line 152
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    const-string v5, "sim_data"

    invoke-virtual {v4, v5}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    .line 153
    .local v1, "dataToggle":Landroid/preference/SwitchPreference;
    if-eqz v1, :cond_1

    .line 154
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    const/4 v5, -0x1

    # invokes: Lcom/android/settings/sim/SimSettings;->isMobileDataEnabled(I)Z
    invoke-static {v4, v5}, Lcom/android/settings/sim/SimSettings;->access$700(Lcom/android/settings/sim/SimSettings;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 156
    :cond_1
    return-void

    .line 137
    .end local v1    # "dataToggle":Landroid/preference/SwitchPreference;
    :cond_2
    const-string v4, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 139
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    const/4 v5, 0x0

    # setter for: Lcom/android/settings/sim/SimSettings;->mNumSims:I
    invoke-static {v4, v5}, Lcom/android/settings/sim/SimSettings;->access$202(Lcom/android/settings/sim/SimSettings;I)I

    .line 140
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v5

    # setter for: Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;
    invoke-static {v4, v5}, Lcom/android/settings/sim/SimSettings;->access$302(Lcom/android/settings/sim/SimSettings;Ljava/util/List;)Ljava/util/List;

    .line 141
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    # getter for: Lcom/android/settings/sim/SimSettings;->mNumSlots:I
    invoke-static {}, Lcom/android/settings/sim/SimSettings;->access$400()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 142
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    # invokes: Lcom/android/settings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubInfoRecord;
    invoke-static {v4, v2}, Lcom/android/settings/sim/SimSettings;->access$500(Lcom/android/settings/sim/SimSettings;I)Landroid/telephony/SubInfoRecord;

    move-result-object v3

    .line 144
    .local v3, "sir":Landroid/telephony/SubInfoRecord;
    if-eqz v3, :cond_3

    iget v4, v3, Landroid/telephony/SubInfoRecord;->mStatus:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 145
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    # operator++ for: Lcom/android/settings/sim/SimSettings;->mNumSims:I
    invoke-static {v4}, Lcom/android/settings/sim/SimSettings;->access$208(Lcom/android/settings/sim/SimSettings;)I

    .line 146
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 150
    .end local v3    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_4
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    # invokes: Lcom/android/settings/sim/SimSettings;->updateAllOptions()V
    invoke-static {v4}, Lcom/android/settings/sim/SimSettings;->access$600(Lcom/android/settings/sim/SimSettings;)V

    goto :goto_0
.end method
