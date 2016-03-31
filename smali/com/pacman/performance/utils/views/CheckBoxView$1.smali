.class Lcom/pacman/performance/utils/views/CheckBoxView$1;
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
    iput-object p1, p0, Lcom/pacman/performance/utils/views/CheckBoxView$1;->this$0:Lcom/pacman/performance/utils/views/CheckBoxView;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/pacman/performance/utils/views/CheckBoxView$1;->this$0:Lcom/pacman/performance/utils/views/CheckBoxView;

    # invokes: Lcom/pacman/performance/utils/views/CheckBoxView;->click()V
    invoke-static {v0}, Lcom/pacman/performance/utils/views/CheckBoxView;->access$0(Lcom/pacman/performance/utils/views/CheckBoxView;)V

    .line 88
    return-void
.end method
