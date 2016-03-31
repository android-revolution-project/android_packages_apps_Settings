.class Lcom/pacman/performance/utils/views/CommonView$1;
.super Ljava/lang/Object;
.source "CommonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pacman/performance/utils/views/CommonView;->getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pacman/performance/utils/views/CommonView;


# direct methods
.method constructor <init>(Lcom/pacman/performance/utils/views/CommonView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pacman/performance/utils/views/CommonView$1;->this$0:Lcom/pacman/performance/utils/views/CommonView;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CommonView$1;->this$0:Lcom/pacman/performance/utils/views/CommonView;

    # getter for: Lcom/pacman/performance/utils/views/CommonView;->onClickListener:Lcom/pacman/performance/utils/views/CommonView$OnClickListener;
    invoke-static {v0}, Lcom/pacman/performance/utils/views/CommonView;->access$0(Lcom/pacman/performance/utils/views/CommonView;)Lcom/pacman/performance/utils/views/CommonView$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CommonView$1;->this$0:Lcom/pacman/performance/utils/views/CommonView;

    # getter for: Lcom/pacman/performance/utils/views/CommonView;->onClickListener:Lcom/pacman/performance/utils/views/CommonView$OnClickListener;
    invoke-static {v0}, Lcom/pacman/performance/utils/views/CommonView;->access$0(Lcom/pacman/performance/utils/views/CommonView;)Lcom/pacman/performance/utils/views/CommonView$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pacman/performance/utils/views/CommonView$1;->this$0:Lcom/pacman/performance/utils/views/CommonView;

    invoke-interface {v0, v1}, Lcom/pacman/performance/utils/views/CommonView$OnClickListener;->onClick(Lcom/pacman/performance/utils/views/CommonView;)V

    .line 78
    :cond_0
    return-void
.end method
