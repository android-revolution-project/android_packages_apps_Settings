.class public Lcom/pacman/performance/utils/views/ListItem;
.super Ljava/lang/Object;
.source "ListItem.java"

# interfaces
.implements Lcom/pacman/performance/utils/views/GenericView$Item;


# instance fields
.field private final fragment:Landroid/support/v4/app/Fragment;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/pacman/performance/utils/views/ListItem;->text:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/pacman/performance/utils/views/ListItem;->fragment:Landroid/support/v4/app/Fragment;

    .line 19
    return-void
.end method


# virtual methods
.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pacman/performance/utils/views/ListItem;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pacman/performance/utils/views/ListItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 23
    const v1, 0x7f030021

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 25
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 26
    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/pacman/performance/utils/views/ListItem;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_0
    return-object v0
.end method

.method public isHeader()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method
