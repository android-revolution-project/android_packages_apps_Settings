.class public Lcom/pacman/performance/utils/views/PopupView;
.super Ljava/lang/Object;
.source "PopupView.java"

# interfaces
.implements Lcom/pacman/performance/utils/views/GenericView$Item;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pacman/performance/utils/views/PopupView$OnItemClickListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private layoutView:Landroid/widget/LinearLayout;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private onItemClickListener:Lcom/pacman/performance/utils/views/PopupView$OnItemClickListener;

.field private position:I

.field private summaryView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;

.field private valueView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/pacman/performance/utils/views/PopupView;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/pacman/performance/utils/views/PopupView;->list:Ljava/util/List;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # [Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pacman/performance/utils/views/PopupView;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/pacman/performance/utils/views/PopupView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->valueView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pacman/performance/utils/views/PopupView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pacman/performance/utils/views/PopupView;)Lcom/pacman/performance/utils/views/PopupView$OnItemClickListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->onItemClickListener:Lcom/pacman/performance/utils/views/PopupView$OnItemClickListener;

    return-object v0
.end method

.method private refresh()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pacman/performance/utils/views/PopupView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->summaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->mSummary:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->summaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pacman/performance/utils/views/PopupView;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->summaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->valueView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/pacman/performance/utils/views/PopupView;->valueView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->list:Ljava/util/List;

    iget v2, p0, Lcom/pacman/performance/utils/views/PopupView;->position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_2
    return-void

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->summaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 96
    const v3, 0x7f030022

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 98
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 99
    const v3, 0x7f09005d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/pacman/performance/utils/views/PopupView;->layoutView:Landroid/widget/LinearLayout;

    .line 100
    const v3, 0x7f09005e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pacman/performance/utils/views/PopupView;->titleView:Landroid/widget/TextView;

    .line 101
    const v3, 0x7f09005f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pacman/performance/utils/views/PopupView;->summaryView:Landroid/widget/TextView;

    .line 102
    const v3, 0x7f090063

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pacman/performance/utils/views/PopupView;->valueView:Landroid/widget/TextView;

    .line 107
    :cond_0
    new-instance v1, Landroid/support/v7/widget/PopupMenu;

    iget-object v3, p0, Lcom/pacman/performance/utils/views/PopupView;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/pacman/performance/utils/views/PopupView;->valueView:Landroid/widget/TextView;

    invoke-direct {v1, v3, v4}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 108
    .local v1, "popup":Landroid/support/v7/widget/PopupMenu;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/pacman/performance/utils/views/PopupView;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 110
    new-instance v3, Lcom/pacman/performance/utils/views/PopupView$1;

    invoke-direct {v3, p0}, Lcom/pacman/performance/utils/views/PopupView$1;-><init>(Lcom/pacman/performance/utils/views/PopupView;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 122
    iget-object v3, p0, Lcom/pacman/performance/utils/views/PopupView;->layoutView:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 123
    iget-object v3, p0, Lcom/pacman/performance/utils/views/PopupView;->layoutView:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/pacman/performance/utils/views/PopupView$2;

    invoke-direct {v4, p0, v1}, Lcom/pacman/performance/utils/views/PopupView$2;-><init>(Lcom/pacman/performance/utils/views/PopupView;Landroid/support/v7/widget/PopupMenu;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/PopupView;->refresh()V

    .line 134
    return-object v2

    .line 109
    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    iget-object v3, p0, Lcom/pacman/performance/utils/views/PopupView;->list:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v4, v5, v0, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isHeader()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public setItem(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/pacman/performance/utils/views/PopupView;->position:I

    .line 67
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/PopupView;->refresh()V

    .line 68
    return-void
.end method

.method public setItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/pacman/performance/utils/views/PopupView;->position:I

    .line 72
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/PopupView;->refresh()V

    .line 73
    return-void
.end method

.method public setOnItemClickListener(Lcom/pacman/performance/utils/views/PopupView$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/pacman/performance/utils/views/PopupView$OnItemClickListener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/pacman/performance/utils/views/PopupView;->onItemClickListener:Lcom/pacman/performance/utils/views/PopupView$OnItemClickListener;

    .line 77
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/pacman/performance/utils/views/PopupView;->mSummary:Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/PopupView;->refresh()V

    .line 63
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/pacman/performance/utils/views/PopupView;->mTitle:Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/PopupView;->refresh()V

    .line 58
    return-void
.end method
