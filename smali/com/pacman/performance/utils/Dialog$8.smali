.class Lcom/pacman/performance/utils/Dialog$8;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field private final synthetic val$dialogreturn:Lcom/pacman/performance/utils/Dialog$DialogReturn;

.field private final synthetic val$seekbar:Landroid/widget/SeekBar;

.field private final synthetic val$values:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pacman/performance/utils/Dialog;Lcom/pacman/performance/utils/Dialog$DialogReturn;[Ljava/lang/String;Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pacman/performance/utils/Dialog$8;->this$0:Lcom/pacman/performance/utils/Dialog;

    iput-object p2, p0, Lcom/pacman/performance/utils/Dialog$8;->val$dialogreturn:Lcom/pacman/performance/utils/Dialog$DialogReturn;

    iput-object p3, p0, Lcom/pacman/performance/utils/Dialog$8;->val$values:[Ljava/lang/String;

    iput-object p4, p0, Lcom/pacman/performance/utils/Dialog$8;->val$seekbar:Landroid/widget/SeekBar;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/pacman/performance/utils/Dialog$8;->val$dialogreturn:Lcom/pacman/performance/utils/Dialog$DialogReturn;

    iget-object v1, p0, Lcom/pacman/performance/utils/Dialog$8;->val$values:[Ljava/lang/String;

    iget-object v2, p0, Lcom/pacman/performance/utils/Dialog$8;->val$seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/pacman/performance/utils/Dialog$DialogReturn;->dialogReturn(Ljava/lang/String;)V

    .line 141
    return-void
.end method
