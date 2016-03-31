.class Lcom/android/settings/sim/SimSettings$2;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimSettings;->updateDSDAPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;

.field final synthetic val$preference:Landroid/preference/SwitchPreference;

.field final synthetic val$sir:Landroid/telephony/SubInfoRecord;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;Landroid/preference/SwitchPreference;Landroid/telephony/SubInfoRecord;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    iput-object p2, p0, Lcom/android/settings/sim/SimSettings$2;->val$preference:Landroid/preference/SwitchPreference;

    iput-object p3, p0, Lcom/android/settings/sim/SimSettings$2;->val$sir:Landroid/telephony/SubInfoRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference2"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 177
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$2;->val$preference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 178
    .local v0, "value":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v2}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$2;->val$sir:Landroid/telephony/SubInfoRecord;

    iget v4, v4, Landroid/telephony/SubInfoRecord;->slotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    return v1

    .end local v0    # "value":I
    :cond_0
    move v0, v1

    .line 177
    goto :goto_0
.end method
