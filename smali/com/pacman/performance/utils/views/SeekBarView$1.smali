.class Lcom/pacman/performance/utils/views/SeekBarView$1;
.super Ljava/lang/Object;
.source "SeekBarView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lcom/pacman/performance/utils/views/SeekBarView$1;->this$0:Lcom/pacman/performance/utils/views/SeekBarView;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView$1;->this$0:Lcom/pacman/performance/utils/views/SeekBarView;

    # getter for: Lcom/pacman/performance/utils/views/SeekBarView;->seekBarValueView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pacman/performance/utils/views/SeekBarView;->access$1(Lcom/pacman/performance/utils/views/SeekBarView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView$1;->this$0:Lcom/pacman/performance/utils/views/SeekBarView;

    # getter for: Lcom/pacman/performance/utils/views/SeekBarView;->seekBarValueView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pacman/performance/utils/views/SeekBarView;->access$1(Lcom/pacman/performance/utils/views/SeekBarView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView$1;->this$0:Lcom/pacman/performance/utils/views/SeekBarView;

    # getter for: Lcom/pacman/performance/utils/views/SeekBarView;->values:Ljava/util/List;
    invoke-static {v0}, Lcom/pacman/performance/utils/views/SeekBarView;->access$2(Lcom/pacman/performance/utils/views/SeekBarView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 106
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView$1;->this$0:Lcom/pacman/performance/utils/views/SeekBarView;

    # getter for: Lcom/pacman/performance/utils/views/SeekBarView;->onSeekBarListener:Lcom/pacman/performance/utils/views/SeekBarView$OnSeekBarListener;
    invoke-static {v0}, Lcom/pacman/performance/utils/views/SeekBarView;->access$0(Lcom/pacman/performance/utils/views/SeekBarView;)Lcom/pacman/performance/utils/views/SeekBarView$OnSeekBarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/pacman/performance/utils/views/SeekBarView$1;->this$0:Lcom/pacman/performance/utils/views/SeekBarView;

    # getter for: Lcom/pacman/performance/utils/views/SeekBarView;->onSeekBarListener:Lcom/pacman/performance/utils/views/SeekBarView$OnSeekBarListener;
    invoke-static {v0}, Lcom/pacman/performance/utils/views/SeekBarView;->access$0(Lcom/pacman/performance/utils/views/SeekBarView;)Lcom/pacman/performance/utils/views/SeekBarView$OnSeekBarListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pacman/performance/utils/views/SeekBarView$1;->this$0:Lcom/pacman/performance/utils/views/SeekBarView;

    .line 102
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 101
    invoke-interface {v0, v1, v2}, Lcom/pacman/performance/utils/views/SeekBarView$OnSeekBarListener;->onStop(Lcom/pacman/performance/utils/views/SeekBarView;I)V

    .line 103
    :cond_0
    return-void
.end method
