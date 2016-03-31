.class Lcom/android/settings/profiles/SetupActionsFragment$13;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/SetupActionsFragment;->requestBrightnessDialog(Landroid/app/BrightnessSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/SetupActionsFragment;

.field final synthetic val$brightnessSettings:Landroid/app/BrightnessSettings;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/app/BrightnessSettings;Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/android/settings/profiles/SetupActionsFragment$13;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/android/settings/profiles/SetupActionsFragment$13;->val$brightnessSettings:Landroid/app/BrightnessSettings;

    iput-object p3, p0, Lcom/android/settings/profiles/SetupActionsFragment$13;->val$seekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$13;->val$brightnessSettings:Landroid/app/BrightnessSettings;

    invoke-virtual {v0, p2}, Landroid/app/BrightnessSettings;->setOverride(Z)V

    .line 775
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$13;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 777
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$13;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment$13;->val$brightnessSettings:Landroid/app/BrightnessSettings;

    invoke-virtual {v0, v1}, Landroid/app/Profile;->setBrightness(Landroid/app/BrightnessSettings;)V

    .line 778
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$13;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/settings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/settings/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 779
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$13;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    # invokes: Lcom/android/settings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v0}, Lcom/android/settings/profiles/SetupActionsFragment;->access$500(Lcom/android/settings/profiles/SetupActionsFragment;)V

    .line 780
    return-void
.end method
