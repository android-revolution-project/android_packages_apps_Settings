.class public Lcom/pacman/performance/utils/views/CommonView;
.super Ljava/lang/Object;
.source "CommonView.java"

# interfaces
.implements Lcom/pacman/performance/utils/views/GenericView$Item;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pacman/performance/utils/views/CommonView$OnClickListener;
    }
.end annotation


# instance fields
.field private layoutView:Landroid/widget/RelativeLayout;

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private onClickListener:Lcom/pacman/performance/utils/views/CommonView$OnClickListener;

.field private summaryView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pacman/performance/utils/views/CommonView;)Lcom/pacman/performance/utils/views/CommonView$OnClickListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CommonView;->onClickListener:Lcom/pacman/performance/utils/views/CommonView$OnClickListener;

    return-object v0
.end method

.method private refresh()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CommonView;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pacman/performance/utils/views/CommonView;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pacman/performance/utils/views/CommonView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CommonView;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pacman/performance/utils/views/CommonView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CommonView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CommonView;->summaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pacman/performance/utils/views/CommonView;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pacman/performance/utils/views/CommonView;->mSummary:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CommonView;->summaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pacman/performance/utils/views/CommonView;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CommonView;->summaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    :cond_1
    :goto_1
    return-void

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CommonView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CommonView;->summaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CommonView;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CommonView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 63
    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 66
    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pacman/performance/utils/views/CommonView;->layoutView:Landroid/widget/RelativeLayout;

    .line 67
    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pacman/performance/utils/views/CommonView;->titleView:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pacman/performance/utils/views/CommonView;->summaryView:Landroid/widget/TextView;

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/pacman/performance/utils/views/CommonView;->layoutView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/pacman/performance/utils/views/CommonView;->layoutView:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/pacman/performance/utils/views/CommonView$1;

    invoke-direct {v2, p0}, Lcom/pacman/performance/utils/views/CommonView$1;-><init>(Lcom/pacman/performance/utils/views/CommonView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/CommonView;->refresh()V

    .line 83
    return-object v0
.end method

.method public isHeader()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public setOnClickListener(Lcom/pacman/performance/utils/views/CommonView$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Lcom/pacman/performance/utils/views/CommonView$OnClickListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/pacman/performance/utils/views/CommonView;->onClickListener:Lcom/pacman/performance/utils/views/CommonView$OnClickListener;

    .line 54
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/pacman/performance/utils/views/CommonView;->mSummary:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/CommonView;->refresh()V

    .line 50
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/pacman/performance/utils/views/CommonView;->mTitle:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/CommonView;->refresh()V

    .line 45
    return-void
.end method
