.class Lcom/android/settings/profiles/SetupActionsFragment$8;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/SetupActionsFragment;->requestConnectionOverrideDialog(Landroid/app/ConnectionSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/SetupActionsFragment;

.field final synthetic val$setting:Landroid/app/ConnectionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/app/ConnectionSettings;)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/settings/profiles/SetupActionsFragment$8;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/android/settings/profiles/SetupActionsFragment$8;->val$setting:Landroid/app/ConnectionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 656
    packed-switch p2, :pswitch_data_0

    .line 669
    :goto_0
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$8;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment$8;->val$setting:Landroid/app/ConnectionSettings;

    invoke-virtual {v0, v1}, Landroid/app/Profile;->setConnectionSettings(Landroid/app/ConnectionSettings;)V

    .line 670
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$8;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/settings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/settings/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 671
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$8;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    # invokes: Lcom/android/settings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v0}, Lcom/android/settings/profiles/SetupActionsFragment;->access$500(Lcom/android/settings/profiles/SetupActionsFragment;)V

    .line 672
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 673
    return-void

    .line 658
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$8;->val$setting:Landroid/app/ConnectionSettings;

    invoke-virtual {v0, v2}, Landroid/app/ConnectionSettings;->setOverride(Z)V

    goto :goto_0

    .line 661
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$8;->val$setting:Landroid/app/ConnectionSettings;

    invoke-virtual {v0, v1}, Landroid/app/ConnectionSettings;->setOverride(Z)V

    .line 662
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$8;->val$setting:Landroid/app/ConnectionSettings;

    invoke-virtual {v0, v2}, Landroid/app/ConnectionSettings;->setValue(I)V

    goto :goto_0

    .line 665
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$8;->val$setting:Landroid/app/ConnectionSettings;

    invoke-virtual {v0, v1}, Landroid/app/ConnectionSettings;->setOverride(Z)V

    .line 666
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$8;->val$setting:Landroid/app/ConnectionSettings;

    invoke-virtual {v0, v1}, Landroid/app/ConnectionSettings;->setValue(I)V

    goto :goto_0

    .line 656
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
