.class Lcom/pacman/performance/utils/views/SeekBarView$3;
.super Ljava/lang/Object;
.source "SeekBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pacman/performance/utils/views/SeekBarView;->getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pacman/performance/utils/views/SeekBarView;


# direct methods
.method constructor <init>(Lcom/pacman/performance/utils/views/SeekBarView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pacman/performance/utils/views/SeekBarView$3;->this$0:Lcom/pacman/performance/utils/views/SeekBarView;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView$3;->this$0:Lcom/pacman/performance/utils/views/SeekBarView;

    # getter for: Lcom/pacman/performance/utils/views/SeekBarView;->seekBarView:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/pacman/performance/utils/views/SeekBarView;->access$3(Lcom/pacman/performance/utils/views/SeekBarView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/pacman/performance/utils/views/SeekBarView$3;->this$0:Lcom/pacman/performance/utils/views/SeekBarView;

    # getter for: Lcom/pacman/performance/utils/views/SeekBarView;->seekBarView:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/pacman/performance/utils/views/SeekBarView;->access$3(Lcom/pacman/performance/utils/views/SeekBarView;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 132
    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView$3;->this$0:Lcom/pacman/performance/utils/views/SeekBarView;

    # getter for: Lcom/pacman/performance/utils/views/SeekBarView;->onSeekBarListener:Lcom/pacman/performance/utils/views/SeekBarView$OnSeekBarListener;
    invoke-static {v0}, Lcom/pacman/performance/utils/views/SeekBarView;->access$0(Lcom/pacman/performance/utils/views/SeekBarView;)Lcom/pacman/performance/utils/views/SeekBarView$OnSeekBarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView$3;->this$0:Lcom/pacman/performance/utils/views/SeekBarView;

    # getter for: Lcom/pacman/performance/utils/views/SeekBarView;->onSeekBarListener:Lcom/pacman/performance/utils/views/SeekBarView$OnSeekBarListener;
    invoke-static {v0}, Lcom/pacman/performance/utils/views/SeekBarView;->access$0(Lcom/pacman/performance/utils/views/SeekBarView;)Lcom/pacman/performance/utils/views/SeekBarView$OnSeekBarListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pacman/performance/utils/views/SeekBarView$3;->this$0:Lcom/pacman/performance/utils/views/SeekBarView;

    .line 134
    iget-object v2, p0, Lcom/pacman/performance/utils/views/SeekBarView$3;->this$0:Lcom/pacman/performance/utils/views/SeekBarView;

    # getter for: Lcom/pacman/performance/utils/views/SeekBarView;->seekBarView:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/pacman/performance/utils/views/SeekBarView;->access$3(Lcom/pacman/performance/utils/views/SeekBarView;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 133
    invoke-interface {v0, v1, v2}, Lcom/pacman/performance/utils/views/SeekBarView$OnSeekBarListener;->onStop(Lcom/pacman/performance/utils/views/SeekBarView;I)V

    .line 135
    :cond_0
    return-void
.end method
