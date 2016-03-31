.class public Lcom/pacman/performance/utils/views/PreferenceView$CustomCheckBox;
.super Landroid/preference/CheckBoxPreference;
.source "PreferenceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pacman/performance/utils/views/PreferenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomCheckBox"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checked"    # Z
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "summary"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/pacman/performance/utils/views/PreferenceView$CustomCheckBox;->setChecked(Z)V

    .line 43
    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/pacman/performance/utils/views/PreferenceView$CustomCheckBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p0, p4}, Lcom/pacman/performance/utils/views/PreferenceView$CustomCheckBox;->setSummary(Ljava/lang/CharSequence;)V

    .line 45
    :cond_1
    return-void
.end method
