.class Lcom/pacman/performance/utils/Dialog$4;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

.field private final synthetic val$modifiedvalues:[Ljava/lang/String;

.field private final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/pacman/performance/utils/Dialog;Landroid/widget/TextView;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pacman/performance/utils/Dialog$4;->this$0:Lcom/pacman/performance/utils/Dialog;

    iput-object p2, p0, Lcom/pacman/performance/utils/Dialog$4;->val$text:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/pacman/performance/utils/Dialog$4;->val$modifiedvalues:[Ljava/lang/String;

    .line 101
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
    iget-object v0, p0, Lcom/pacman/performance/utils/Dialog$4;->val$text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pacman/performance/utils/Dialog$4;->val$modifiedvalues:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
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
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 103
    return-void
.end method
