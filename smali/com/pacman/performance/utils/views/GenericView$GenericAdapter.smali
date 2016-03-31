.class public Lcom/pacman/performance/utils/views/GenericView$GenericAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GenericView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pacman/performance/utils/views/GenericView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/pacman/performance/utils/views/GenericView$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/pacman/performance/utils/views/GenericView$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/pacman/performance/utils/views/GenericView$Item;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/pacman/performance/utils/views/GenericView$GenericAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 34
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/pacman/performance/utils/views/GenericView$GenericAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pacman/performance/utils/views/GenericView$Item;

    iget-object v1, p0, Lcom/pacman/performance/utils/views/GenericView$GenericAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-interface {v0, v1, p2}, Lcom/pacman/performance/utils/views/GenericView$Item;->getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
