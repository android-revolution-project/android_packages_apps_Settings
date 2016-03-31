.class Lcom/pacman/performance/utils/Dialog$3;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pacman/performance/utils/Dialog;->showDialogGeneric(Ljava/lang/String;Ljava/lang/String;Lcom/pacman/performance/utils/Dialog$DialogReturn;ILcom/pacman/performance/utils/CommandControl$CommandType;ILandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pacman/performance/utils/Dialog;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$command:Lcom/pacman/performance/utils/CommandControl$CommandType;

.field private final synthetic val$customID:I

.field private final synthetic val$dialogreturn:Lcom/pacman/performance/utils/Dialog$DialogReturn;

.field private final synthetic val$editor:Landroid/widget/EditText;

.field private final synthetic val$file:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pacman/performance/utils/Dialog;Lcom/pacman/performance/utils/CommandControl$CommandType;Landroid/widget/EditText;Ljava/lang/String;ILandroid/app/Activity;Lcom/pacman/performance/utils/Dialog$DialogReturn;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pacman/performance/utils/Dialog$3;->this$0:Lcom/pacman/performance/utils/Dialog;

    iput-object p2, p0, Lcom/pacman/performance/utils/Dialog$3;->val$command:Lcom/pacman/performance/utils/CommandControl$CommandType;

    iput-object p3, p0, Lcom/pacman/performance/utils/Dialog$3;->val$editor:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/pacman/performance/utils/Dialog$3;->val$file:Ljava/lang/String;

    iput p5, p0, Lcom/pacman/performance/utils/Dialog$3;->val$customID:I

    iput-object p6, p0, Lcom/pacman/performance/utils/Dialog$3;->val$activity:Landroid/app/Activity;

    iput-object p7, p0, Lcom/pacman/performance/utils/Dialog$3;->val$dialogreturn:Lcom/pacman/performance/utils/Dialog$DialogReturn;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pacman/performance/utils/Dialog$3;->val$command:Lcom/pacman/performance/utils/CommandControl$CommandType;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/pacman/performance/utils/Dialog;->mCommandControl:Lcom/pacman/performance/utils/CommandControl;

    iget-object v1, p0, Lcom/pacman/performance/utils/Dialog$3;->val$editor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pacman/performance/utils/Dialog$3;->val$file:Ljava/lang/String;

    iget-object v3, p0, Lcom/pacman/performance/utils/Dialog$3;->val$command:Lcom/pacman/performance/utils/CommandControl$CommandType;

    iget v4, p0, Lcom/pacman/performance/utils/Dialog$3;->val$customID:I

    .line 74
    iget-object v5, p0, Lcom/pacman/performance/utils/Dialog$3;->val$activity:Landroid/app/Activity;

    .line 72
    invoke-virtual/range {v0 .. v5}, Lcom/pacman/performance/utils/CommandControl;->runCommand(Ljava/lang/String;Ljava/lang/String;Lcom/pacman/performance/utils/CommandControl$CommandType;ILandroid/app/Activity;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/pacman/performance/utils/Dialog$3;->val$dialogreturn:Lcom/pacman/performance/utils/Dialog$DialogReturn;

    iget-object v1, p0, Lcom/pacman/performance/utils/Dialog$3;->val$editor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pacman/performance/utils/Dialog$DialogReturn;->dialogReturn(Ljava/lang/String;)V

    .line 76
    return-void
.end method
