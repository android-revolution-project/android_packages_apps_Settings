.class Lcom/pacman/performance/utils/views/PopupView$2;
.super Ljava/lang/Object;
.source "PopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$popup:Landroid/support/v7/widget/PopupMenu;


# direct methods
.method constructor <init>(Lcom/pacman/performance/utils/views/PopupView;Landroid/support/v7/widget/PopupMenu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pacman/performance/utils/views/PopupView$2;->this$0:Lcom/pacman/performance/utils/views/PopupView;

    iput-object p2, p0, Lcom/pacman/performance/utils/views/PopupView$2;->val$popup:Landroid/support/v7/widget/PopupMenu;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/pacman/performance/utils/views/PopupView$2;->val$popup:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 128
    return-void
.end method
