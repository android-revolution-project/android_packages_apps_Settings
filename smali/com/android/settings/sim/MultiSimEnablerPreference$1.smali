.class Lcom/android/settings/sim/MultiSimEnablerPreference$1;
.super Ljava/lang/Object;
.source "MultiSimEnablerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/MultiSimEnablerPreference;->createEditDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

.field final synthetic val$dialogLayout:Landroid/view/View;

.field final synthetic val$nameText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/MultiSimEnablerPreference;Landroid/view/View;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    iput-object p2, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$1;->val$dialogLayout:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$1;->val$nameText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 171
    iget-object v2, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$1;->val$dialogLayout:Landroid/view/View;

    const v3, 0x7f100152

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 174
    .local v0, "displayNumbers":Landroid/widget/Spinner;
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x2

    .line 177
    .local v1, "formatSetting":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;
    invoke-static {v2}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$000(Lcom/android/settings/sim/MultiSimEnablerPreference;)Landroid/telephony/SubInfoRecord;

    move-result-object v2

    iget-wide v2, v2, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-static {v1, v2, v3}, Landroid/telephony/SubscriptionManager;->setDisplayNumberFormat(IJ)I

    .line 179
    iget-object v2, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;
    invoke-static {v2}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$000(Lcom/android/settings/sim/MultiSimEnablerPreference;)Landroid/telephony/SubInfoRecord;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$1;->val$nameText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    .line 180
    iget-object v2, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;
    invoke-static {v2}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$000(Lcom/android/settings/sim/MultiSimEnablerPreference;)Landroid/telephony/SubInfoRecord;

    move-result-object v2

    iget-object v2, v2, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;
    invoke-static {v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$000(Lcom/android/settings/sim/MultiSimEnablerPreference;)Landroid/telephony/SubInfoRecord;

    move-result-object v3

    iget-wide v4, v3, Landroid/telephony/SubInfoRecord;->subId:J

    const-wide/16 v6, 0x2

    invoke-static {v2, v4, v5, v6, v7}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;JJ)I

    .line 183
    iget-object v2, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    invoke-virtual {v2}, Lcom/android/settings/sim/MultiSimEnablerPreference;->update()V

    .line 184
    return-void

    .line 174
    .end local v1    # "formatSetting":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
