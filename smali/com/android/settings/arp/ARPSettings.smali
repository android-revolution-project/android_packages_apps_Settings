.class public Lcom/android/settings/arp/ARPSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ARPSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f060068

    invoke-virtual {p0, v0}, Lcom/android/settings/arp/ARPSettings;->addPreferencesFromResource(I)V

    .line 33
    return-void
.end method
