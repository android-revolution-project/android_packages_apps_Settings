.class Lcom/android/settings/profiles/SetupActionsFragment$21;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/SetupActionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/SetupActionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/SetupActionsFragment;)V
    .locals 0

    .prologue
    .line 906
    iput-object p1, p0, Lcom/android/settings/profiles/SetupActionsFragment$21;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$21;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment$21;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->addProfile(Landroid/app/Profile;)V

    .line 911
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$21;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    invoke-virtual {v0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 912
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$21;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    invoke-virtual {v0}, Lcom/android/settings/profiles/SetupActionsFragment;->finishFragment()V

    .line 913
    return-void
.end method
