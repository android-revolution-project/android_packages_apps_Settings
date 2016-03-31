.class Lcom/pacman/performance/utils/views/PopupView$1;
.super Ljava/lang/Object;
.source "PopupView.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pacman/performance/utils/views/PopupView;->getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pacman/performance/utils/views/PopupView;


# direct methods
.method constructor <init>(Lcom/pacman/performance/utils/views/PopupView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pacman/performance/utils/views/PopupView$1;->this$0:Lcom/pacman/performance/utils/views/PopupView;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView$1;->this$0:Lcom/pacman/performance/utils/views/PopupView;

    # getter for: Lcom/pacman/performance/utils/views/PopupView;->valueView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pacman/performance/utils/views/PopupView;->access$0(Lcom/pacman/performance/utils/views/PopupView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView$1;->this$0:Lcom/pacman/performance/utils/views/PopupView;

    # getter for: Lcom/pacman/performance/utils/views/PopupView;->valueView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pacman/performance/utils/views/PopupView;->access$0(Lcom/pacman/performance/utils/views/PopupView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView$1;->this$0:Lcom/pacman/performance/utils/views/PopupView;

    # getter for: Lcom/pacman/performance/utils/views/PopupView;->list:Ljava/util/List;
    invoke-static {v0}, Lcom/pacman/performance/utils/views/PopupView;->access$1(Lcom/pacman/performance/utils/views/PopupView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView$1;->this$0:Lcom/pacman/performance/utils/views/PopupView;

    # getter for: Lcom/pacman/performance/utils/views/PopupView;->onItemClickListener:Lcom/pacman/performance/utils/views/PopupView$OnItemClickListener;
    invoke-static {v0}, Lcom/pacman/performance/utils/views/PopupView;->access$2(Lcom/pacman/performance/utils/views/PopupView;)Lcom/pacman/performance/utils/views/PopupView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView$1;->this$0:Lcom/pacman/performance/utils/views/PopupView;

    # getter for: Lcom/pacman/performance/utils/views/PopupView;->onItemClickListener:Lcom/pacman/performance/utils/views/PopupView$OnItemClickListener;
    invoke-static {v0}, Lcom/pacman/performance/utils/views/PopupView;->access$2(Lcom/pacman/performance/utils/views/PopupView;)Lcom/pacman/performance/utils/views/PopupView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pacman/performance/utils/views/PopupView$1;->this$0:Lcom/pacman/performance/utils/views/PopupView;

    .line 117
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 116
    invoke-interface {v0, v1, v2}, Lcom/pacman/performance/utils/views/PopupView$OnItemClickListener;->onItemClick(Lcom/pacman/performance/utils/views/PopupView;I)V

    .line 118
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
