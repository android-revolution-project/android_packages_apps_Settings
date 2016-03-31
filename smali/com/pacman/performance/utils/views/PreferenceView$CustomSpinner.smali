.class public Lcom/pacman/performance/utils/views/PreferenceView$CustomSpinner;
.super Landroid/preference/Preference;
.source "PreferenceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pacman/performance/utils/views/PreferenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomSpinner"
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pacman/performance/utils/views/PreferenceView$CustomSpinner;->list:Ljava/util/List;

    .line 56
    iput-object p4, p0, Lcom/pacman/performance/utils/views/PreferenceView$CustomSpinner;->list:Ljava/util/List;

    .line 57
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/pacman/performance/utils/views/PreferenceView$CustomSpinner;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p3}, Lcom/pacman/performance/utils/views/PreferenceView$CustomSpinner;->setSummary(Ljava/lang/CharSequence;)V

    .line 59
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;
    .param p4, "list"    # [Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/pacman/performance/utils/views/PreferenceView$CustomSpinner;->list:Ljava/util/List;

    .line 64
    array-length v2, p4

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_2

    .line 66
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/pacman/performance/utils/views/PreferenceView$CustomSpinner;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p3}, Lcom/pacman/performance/utils/views/PreferenceView$CustomSpinner;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    :cond_1
    return-void

    .line 64
    :cond_2
    aget-object v0, p4, v1

    .line 65
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/pacman/performance/utils/views/PreferenceView$CustomSpinner;->list:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 75
    .local v3, "view":Landroid/view/View;
    const v4, 0x1020018

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 74
    check-cast v1, Landroid/widget/LinearLayout;

    .line 76
    .local v1, "layout":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 79
    invoke-virtual {p0}, Lcom/pacman/performance/utils/views/PreferenceView$CustomSpinner;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090008

    iget-object v6, p0, Lcom/pacman/performance/utils/views/PreferenceView$CustomSpinner;->list:Ljava/util/List;

    .line 78
    invoke-direct {v0, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 80
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 82
    new-instance v2, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/pacman/performance/utils/views/PreferenceView$CustomSpinner;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 83
    .local v2, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    return-object v3
.end method
