.class public Lcom/pacman/performance/utils/views/CheckBoxView;
.super Ljava/lang/Object;
.source "CheckBoxView.java"

# interfaces
.implements Lcom/pacman/performance/utils/views/GenericView$Item;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pacman/performance/utils/views/CheckBoxView$OnCheckBoxListener;
    }
.end annotation


# instance fields
.field private checkboxView:Landroid/widget/CheckBox;

.field private layoutView:Landroid/widget/LinearLayout;

.field private mChecked:Z

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private onCheckBoxListener:Lcom/pacman/performance/utils/views/CheckBoxView$OnCheckBoxListener;

.field private summaryView:Landroid/support/v7/widget/AppCompatTextView;

.field private titleView:Landroid/support/v7/widget/AppCompatTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pacman/performance/utils/views/CheckBoxView;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/CheckBoxView;->click()V

    return-void
.end method

.method static synthetic access$1(Lcom/pacman/performance/utils/views/CheckBoxView;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->checkboxView:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private click()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->checkboxView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->mChecked:Z

    .line 108
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->onCheckBoxListener:Lcom/pacman/performance/utils/views/CheckBoxView$OnCheckBoxListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->onCheckBoxListener:Lcom/pacman/performance/utils/views/CheckBoxView$OnCheckBoxListener;

    .line 110
    iget-object v1, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->checkboxView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 109
    invoke-interface {v0, p0, v1}, Lcom/pacman/performance/utils/views/CheckBoxView$OnCheckBoxListener;->onClick(Lcom/pacman/performance/utils/views/CheckBoxView;Z)V

    .line 111
    :cond_0
    return-void
.end method

.method private refresh()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->titleView:Landroid/support/v7/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->titleView:Landroid/support/v7/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->titleView:Landroid/support/v7/widget/AppCompatTextView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatTextView;->setVisibility(I)V

    .line 119
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->summaryView:Landroid/support/v7/widget/AppCompatTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->mSummary:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 120
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->summaryView:Landroid/support/v7/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->summaryView:Landroid/support/v7/widget/AppCompatTextView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatTextView;->setVisibility(I)V

    .line 124
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->checkboxView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->checkboxView:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 125
    :cond_2
    return-void

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->titleView:Landroid/support/v7/widget/AppCompatTextView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AppCompatTextView;->setVisibility(I)V

    goto :goto_0

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->summaryView:Landroid/support/v7/widget/AppCompatTextView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AppCompatTextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 73
    const v1, 0x7f03001c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 76
    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->layoutView:Landroid/widget/LinearLayout;

    .line 77
    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatTextView;

    iput-object v1, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->titleView:Landroid/support/v7/widget/AppCompatTextView;

    .line 78
    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatTextView;

    iput-object v1, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->summaryView:Landroid/support/v7/widget/AppCompatTextView;

    .line 79
    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v1, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->checkboxView:Landroid/widget/CheckBox;

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->checkboxView:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->checkboxView:Landroid/widget/CheckBox;

    new-instance v2, Lcom/pacman/performance/utils/views/CheckBoxView$1;

    invoke-direct {v2, p0}, Lcom/pacman/performance/utils/views/CheckBoxView$1;-><init>(Lcom/pacman/performance/utils/views/CheckBoxView;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->layoutView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->layoutView:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/pacman/performance/utils/views/CheckBoxView$2;

    invoke-direct {v2, p0}, Lcom/pacman/performance/utils/views/CheckBoxView$2;-><init>(Lcom/pacman/performance/utils/views/CheckBoxView;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_2
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/CheckBoxView;->refresh()V

    .line 103
    return-object v0
.end method

.method public isHeader()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->mChecked:Z

    .line 30
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/CheckBoxView;->refresh()V

    .line 31
    return-void
.end method

.method public setOnCheckBoxListener(Lcom/pacman/performance/utils/views/CheckBoxView$OnCheckBoxListener;)V
    .locals 0
    .param p1, "onCheckBoxListener"    # Lcom/pacman/performance/utils/views/CheckBoxView$OnCheckBoxListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->onCheckBoxListener:Lcom/pacman/performance/utils/views/CheckBoxView$OnCheckBoxListener;

    .line 69
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->mSummary:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/CheckBoxView;->refresh()V

    .line 40
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/pacman/performance/utils/views/CheckBoxView;->mTitle:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/CheckBoxView;->refresh()V

    .line 45
    return-void
.end method
