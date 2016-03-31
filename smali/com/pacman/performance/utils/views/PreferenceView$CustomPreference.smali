.class public Lcom/pacman/performance/utils/views/PreferenceView$CustomPreference;
.super Landroid/preference/Preference;
.source "PreferenceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pacman/performance/utils/views/PreferenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomPreference"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 31
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/pacman/performance/utils/views/PreferenceView$CustomPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p3}, Lcom/pacman/performance/utils/views/PreferenceView$CustomPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 33
    :cond_1
    return-void
.end method
