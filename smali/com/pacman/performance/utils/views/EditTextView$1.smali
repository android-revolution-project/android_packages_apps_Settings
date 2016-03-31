.class Lcom/pacman/performance/utils/views/EditTextView$1;
.super Ljava/lang/Object;
.source "EditTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pacman/performance/utils/views/EditTextView;->getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pacman/performance/utils/views/EditTextView;


# direct methods
.method constructor <init>(Lcom/pacman/performance/utils/views/EditTextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pacman/performance/utils/views/EditTextView$1;->this$0:Lcom/pacman/performance/utils/views/EditTextView;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView$1;->this$0:Lcom/pacman/performance/utils/views/EditTextView;

    # getter for: Lcom/pacman/performance/utils/views/EditTextView;->onApplyListener:Lcom/pacman/performance/utils/views/EditTextView$OnApplyListener;
    invoke-static {v0}, Lcom/pacman/performance/utils/views/EditTextView;->access$0(Lcom/pacman/performance/utils/views/EditTextView;)Lcom/pacman/performance/utils/views/EditTextView$OnApplyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/pacman/performance/utils/views/EditTextView$1;->this$0:Lcom/pacman/performance/utils/views/EditTextView;

    # getter for: Lcom/pacman/performance/utils/views/EditTextView;->onApplyListener:Lcom/pacman/performance/utils/views/EditTextView$OnApplyListener;
    invoke-static {v0}, Lcom/pacman/performance/utils/views/EditTextView;->access$0(Lcom/pacman/performance/utils/views/EditTextView;)Lcom/pacman/performance/utils/views/EditTextView$OnApplyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pacman/performance/utils/views/EditTextView$1;->this$0:Lcom/pacman/performance/utils/views/EditTextView;

    iget-object v2, p0, Lcom/pacman/performance/utils/views/EditTextView$1;->this$0:Lcom/pacman/performance/utils/views/EditTextView;

    # getter for: Lcom/pacman/performance/utils/views/EditTextView;->edittextView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/pacman/performance/utils/views/EditTextView;->access$1(Lcom/pacman/performance/utils/views/EditTextView;)Landroid/widget/EditText;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-interface {v0, v1, v2}, Lcom/pacman/performance/utils/views/EditTextView$OnApplyListener;->onApply(Lcom/pacman/performance/utils/views/EditTextView;Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method
