.class public Lcom/pacman/performance/utils/views/EditTextView;
.super Ljava/lang/Object;
.source "EditTextView.java"

# interfaces
.implements Lcom/pacman/performance/utils/views/GenericView$Item;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pacman/performance/utils/views/EditTextView$OnApplyListener;
    }
.end annotation


# instance fields
.field private applyView:Landroid/widget/Button;

.field private edittextView:Landroid/widget/EditText;

.field private mInputType:I

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private onApplyListener:Lcom/pacman/performance/utils/views/EditTextView$OnApplyListener;

.field private summaryView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pacman/performance/utils/views/EditTextView;)Lcom/pacman/performance/utils/views/EditTextView$OnApplyListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->onApplyListener:Lcom/pacman/performance/utils/views/EditTextView$OnApplyListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pacman/performance/utils/views/EditTextView;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->edittextView:Landroid/widget/EditText;

    return-object v0
.end method

.method private refresh()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pacman/performance/utils/views/EditTextView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->summaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->mSummary:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 108
    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->summaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pacman/performance/utils/views/EditTextView;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->summaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->edittextView:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->edittextView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/pacman/performance/utils/views/EditTextView;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->mInputType:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->edittextView:Landroid/widget/EditText;

    iget v1, p0, Lcom/pacman/performance/utils/views/EditTextView;->mInputType:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 116
    :cond_2
    return-void

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->summaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 78
    const v1, 0x7f03001e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 81
    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pacman/performance/utils/views/EditTextView;->titleView:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pacman/performance/utils/views/EditTextView;->summaryView:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/pacman/performance/utils/views/EditTextView;->edittextView:Landroid/widget/EditText;

    .line 84
    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/pacman/performance/utils/views/EditTextView;->applyView:Landroid/widget/Button;

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/pacman/performance/utils/views/EditTextView;->applyView:Landroid/widget/Button;

    new-instance v2, Lcom/pacman/performance/utils/views/EditTextView$1;

    invoke-direct {v2, p0}, Lcom/pacman/performance/utils/views/EditTextView$1;-><init>(Lcom/pacman/performance/utils/views/EditTextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/EditTextView;->refresh()V

    .line 98
    return-object v0
.end method

.method public isHeader()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public setInputType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/pacman/performance/utils/views/EditTextView;->mInputType:I

    .line 54
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/EditTextView;->refresh()V

    .line 55
    return-void
.end method

.method public setOnApplyListener(Lcom/pacman/performance/utils/views/EditTextView$OnApplyListener;)V
    .locals 0
    .param p1, "onApplyListener"    # Lcom/pacman/performance/utils/views/EditTextView$OnApplyListener;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/pacman/performance/utils/views/EditTextView;->onApplyListener:Lcom/pacman/performance/utils/views/EditTextView$OnApplyListener;

    .line 59
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/pacman/performance/utils/views/EditTextView;->mSummary:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/EditTextView;->refresh()V

    .line 45
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/pacman/performance/utils/views/EditTextView;->mTitle:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/EditTextView;->refresh()V

    .line 40
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/pacman/performance/utils/views/EditTextView;->mValue:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/EditTextView;->refresh()V

    .line 50
    return-void
.end method
