.class public Lcom/pacman/performance/utils/views/PreferenceView$CustomCategory;
.super Landroid/preference/PreferenceCategory;
.source "PreferenceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pacman/performance/utils/views/PreferenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomCategory"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 22
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/pacman/performance/utils/views/PreferenceView$CustomCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    :cond_0
    return-void
.end method
