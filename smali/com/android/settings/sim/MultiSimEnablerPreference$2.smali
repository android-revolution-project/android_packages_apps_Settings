.class Lcom/android/settings/sim/MultiSimEnablerPreference$2;
.super Ljava/lang/Object;
.source "MultiSimEnablerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/MultiSimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/MultiSimEnablerPreference;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$2;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 416
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$2;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/sim/MultiSimEnablerPreference;->sendSubConfigurationRequest(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$100(Lcom/android/settings/sim/MultiSimEnablerPreference;Z)V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$2;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/sim/MultiSimEnablerPreference;->updateCheckedState(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$200(Lcom/android/settings/sim/MultiSimEnablerPreference;Z)V

    goto :goto_0
.end method
