.class Lcom/pacman/performance/utils/Dialog$6;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pacman/performance/utils/Dialog;->showSeekBarDialog([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/pacman/performance/utils/Dialog$DialogReturn;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pacman/performance/utils/Dialog;

.field private final synthetic val$seekbar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/pacman/performance/utils/Dialog;Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pacman/performance/utils/Dialog$6;->this$0:Lcom/pacman/performance/utils/Dialog;

    iput-object p2, p0, Lcom/pacman/performance/utils/Dialog$6;->val$seekbar:Landroid/widget/SeekBar;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/pacman/performance/utils/Dialog$6;->val$seekbar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/pacman/performance/utils/Dialog$6;->val$seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 126
    return-void
.end method
