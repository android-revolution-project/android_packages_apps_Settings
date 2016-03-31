.class Lcom/pacman/performance/utils/views/CheckBoxView$2;
.super Ljava/lang/Object;
.source "CheckBoxView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pacman/performance/utils/views/CheckBoxView;->getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pacman/performance/utils/views/CheckBoxView;


# direct methods
.method constructor <init>(Lcom/pacman/performance/utils/views/CheckBoxView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pacman/performance/utils/views/CheckBoxView$2;->this$0:Lcom/pacman/performance/utils/views/CheckBoxView;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView$2;->this$0:Lcom/pacman/performance/utils/views/CheckBoxView;

    # getter for: Lcom/pacman/performance/utils/views/CheckBoxView;->checkboxView:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/pacman/performance/utils/views/CheckBoxView;->access$1(Lcom/pacman/performance/utils/views/CheckBoxView;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView$2;->this$0:Lcom/pacman/performance/utils/views/CheckBoxView;

    # getter for: Lcom/pacman/performance/utils/views/CheckBoxView;->checkboxView:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/pacman/performance/utils/views/CheckBoxView;->access$1(Lcom/pacman/performance/utils/views/CheckBoxView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView$2;->this$0:Lcom/pacman/performance/utils/views/CheckBoxView;

    # invokes: Lcom/pacman/performance/utils/views/CheckBoxView;->click()V
    invoke-static {v0}, Lcom/pacman/performance/utils/views/CheckBoxView;->access$0(Lcom/pacman/performance/utils/views/CheckBoxView;)V

    .line 98
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
