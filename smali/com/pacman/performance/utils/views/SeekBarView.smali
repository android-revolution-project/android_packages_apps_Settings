.class public Lcom/pacman/performance/utils/views/SeekBarView;
.super Ljava/lang/Object;
.source "SeekBarView.java"

# interfaces
.implements Lcom/pacman/performance/utils/views/GenericView$Item;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pacman/performance/utils/views/SeekBarView$OnSeekBarListener;
    }
.end annotation


# instance fields
.field private item:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private minusView:Landroid/widget/Button;

.field private onSeekBarListener:Lcom/pacman/performance/utils/views/SeekBarView$OnSeekBarListener;

.field private plusView:Landroid/widget/Button;

.field private seekBarValueView:Landroid/widget/TextView;

.field private seekBarView:Landroid/widget/SeekBar;

.field private titleView:Landroid/widget/TextView;

.field private final values:Ljava/util/List;
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
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/pacman/performance/utils/views/SeekBarView;->values:Ljava/util/List;

    .line 34
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 4
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 40
    iput-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView;->values:Ljava/util/List;

    .line 41
    return-void

    .line 38
    :cond_0
    aget-object v1, p1, v2

    .line 39
    .local v1, "value":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pacman/performance/utils/views/SeekBarView;)Lcom/pacman/performance/utils/views/SeekBarView$OnSeekBarListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView;->onSeekBarListener:Lcom/pacman/performance/utils/views/SeekBarView$OnSeekBarListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pacman/performance/utils/views/SeekBarView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView;->seekBarValueView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pacman/performance/utils/views/SeekBarView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView;->values:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pacman/performance/utils/views/SeekBarView;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView;->seekBarView:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pacman/performance/utils/views/SeekBarView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView;->seekBarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/pacman/performance/utils/views/SeekBarView;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 148
    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView;->item:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 149
    iget-object v1, p0, Lcom/pacman/performance/utils/views/SeekBarView;->seekBarView:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView;->values:Ljava/util/List;

    iget-object v2, p0, Lcom/pacman/performance/utils/views/SeekBarView;->item:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 152
    :cond_1
    return-void

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView;->values:Ljava/util/List;

    .line 150
    iget-object v2, p0, Lcom/pacman/performance/utils/views/SeekBarView;->item:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 83
    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 86
    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pacman/performance/utils/views/SeekBarView;->titleView:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    iput-object v1, p0, Lcom/pacman/performance/utils/views/SeekBarView;->seekBarValueView:Landroid/widget/TextView;

    .line 89
    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/pacman/performance/utils/views/SeekBarView;->seekBarView:Landroid/widget/SeekBar;

    .line 90
    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/pacman/performance/utils/views/SeekBarView;->minusView:Landroid/widget/Button;

    .line 91
    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/pacman/performance/utils/views/SeekBarView;->plusView:Landroid/widget/Button;

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/pacman/performance/utils/views/SeekBarView;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/pacman/performance/utils/views/SeekBarView;->seekBarView:Landroid/widget/SeekBar;

    .line 96
    new-instance v2, Lcom/pacman/performance/utils/views/SeekBarView$1;

    invoke-direct {v2, p0}, Lcom/pacman/performance/utils/views/SeekBarView$1;-><init>(Lcom/pacman/performance/utils/views/SeekBarView;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 116
    iget-object v1, p0, Lcom/pacman/performance/utils/views/SeekBarView;->minusView:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/pacman/performance/utils/views/SeekBarView;->plusView:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/pacman/performance/utils/views/SeekBarView;->minusView:Landroid/widget/Button;

    new-instance v2, Lcom/pacman/performance/utils/views/SeekBarView$2;

    invoke-direct {v2, p0}, Lcom/pacman/performance/utils/views/SeekBarView$2;-><init>(Lcom/pacman/performance/utils/views/SeekBarView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v1, p0, Lcom/pacman/performance/utils/views/SeekBarView;->plusView:Landroid/widget/Button;

    new-instance v2, Lcom/pacman/performance/utils/views/SeekBarView$3;

    invoke-direct {v2, p0}, Lcom/pacman/performance/utils/views/SeekBarView$3;-><init>(Lcom/pacman/performance/utils/views/SeekBarView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_1
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/SeekBarView;->refresh()V

    .line 141
    return-object v0
.end method

.method public isHeader()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public setItem(Ljava/lang/String;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/pacman/performance/utils/views/SeekBarView;->item:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/SeekBarView;->refresh()V

    .line 50
    return-void
.end method

.method public setOnSeekBarListener(Lcom/pacman/performance/utils/views/SeekBarView$OnSeekBarListener;)V
    .locals 0
    .param p1, "onSeekBarListener"    # Lcom/pacman/performance/utils/views/SeekBarView$OnSeekBarListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/pacman/performance/utils/views/SeekBarView;->onSeekBarListener:Lcom/pacman/performance/utils/views/SeekBarView$OnSeekBarListener;

    .line 79
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/pacman/performance/utils/views/SeekBarView;->mTitle:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lcom/pacman/performance/utils/views/SeekBarView;->refresh()V

    .line 55
    return-void
.end method
