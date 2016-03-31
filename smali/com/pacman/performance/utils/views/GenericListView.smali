.class public Lcom/pacman/performance/utils/views/GenericListView;
.super Landroid/widget/ArrayAdapter;
.source "GenericListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final filesString:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "filesString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v0, 0x7f03001f

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 23
    iput-object p1, p0, Lcom/pacman/performance/utils/views/GenericListView;->activity:Landroid/app/Activity;

    .line 24
    iput-object p2, p0, Lcom/pacman/performance/utils/views/GenericListView;->filesString:Ljava/util/List;

    .line 25
    iput-object p3, p0, Lcom/pacman/performance/utils/views/GenericListView;->values:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 30
    iget-object v4, p0, Lcom/pacman/performance/utils/views/GenericListView;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 31
    iget-object v4, p0, Lcom/pacman/performance/utils/views/GenericListView;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 32
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f03001f

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 33
    .local v1, "rowView":Landroid/view/View;
    const v4, 0x7f09005e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 34
    .local v2, "title":Landroid/widget/TextView;
    const v4, 0x7f090063

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 35
    .local v3, "value":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/pacman/performance/utils/views/GenericListView;->filesString:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 36
    iget-object v4, p0, Lcom/pacman/performance/utils/views/GenericListView;->filesString:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_0
    iget-object v4, p0, Lcom/pacman/performance/utils/views/GenericListView;->values:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/pacman/performance/utils/views/GenericListView;->values:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "rowView":Landroid/view/View;
    .end local v2    # "title":Landroid/widget/TextView;
    .end local v3    # "value":Landroid/widget/TextView;
    :cond_1
    return-object v1
.end method
