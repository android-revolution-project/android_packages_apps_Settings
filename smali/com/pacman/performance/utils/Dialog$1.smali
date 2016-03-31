.class Lcom/pacman/performance/utils/Dialog$1;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pacman/performance/utils/Dialog;->showDialogList([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/pacman/performance/utils/Dialog$DialogReturn;Lcom/pacman/performance/utils/CommandControl$CommandType;ILandroid/app/Activity;)V
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

.field private final synthetic val$file:Ljava/lang/String;

.field private final synthetic val$items:[Ljava/lang/String;

.field private final synthetic val$modifiedItems:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pacman/performance/utils/Dialog;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/pacman/performance/utils/CommandControl$CommandType;ILandroid/app/Activity;Lcom/pacman/performance/utils/Dialog$DialogReturn;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pacman/performance/utils/Dialog$1;->this$0:Lcom/pacman/performance/utils/Dialog;

    iput-object p2, p0, Lcom/pacman/performance/utils/Dialog$1;->val$items:[Ljava/lang/String;

    iput-object p3, p0, Lcom/pacman/performance/utils/Dialog$1;->val$modifiedItems:[Ljava/lang/String;

    iput-object p4, p0, Lcom/pacman/performance/utils/Dialog$1;->val$file:Ljava/lang/String;

    iput-object p5, p0, Lcom/pacman/performance/utils/Dialog$1;->val$command:Lcom/pacman/performance/utils/CommandControl$CommandType;

    iput p6, p0, Lcom/pacman/performance/utils/Dialog$1;->val$customID:I

    iput-object p7, p0, Lcom/pacman/performance/utils/Dialog$1;->val$activity:Landroid/app/Activity;

    iput-object p8, p0, Lcom/pacman/performance/utils/Dialog$1;->val$dialogreturn:Lcom/pacman/performance/utils/Dialog$DialogReturn;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 30
    sget-object v0, Lcom/pacman/performance/utils/Dialog;->mCommandControl:Lcom/pacman/performance/utils/CommandControl;

    iget-object v1, p0, Lcom/pacman/performance/utils/Dialog$1;->val$items:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pacman/performance/utils/Dialog$1;->val$modifiedItems:[Ljava/lang/String;

    aget-object v1, v1, p2

    .line 31
    :goto_0
    iget-object v2, p0, Lcom/pacman/performance/utils/Dialog$1;->val$file:Ljava/lang/String;

    iget-object v3, p0, Lcom/pacman/performance/utils/Dialog$1;->val$command:Lcom/pacman/performance/utils/CommandControl$CommandType;

    iget v4, p0, Lcom/pacman/performance/utils/Dialog$1;->val$customID:I

    iget-object v5, p0, Lcom/pacman/performance/utils/Dialog$1;->val$activity:Landroid/app/Activity;

    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/pacman/performance/utils/CommandControl;->runCommand(Ljava/lang/String;Ljava/lang/String;Lcom/pacman/performance/utils/CommandControl$CommandType;ILandroid/app/Activity;)V

    .line 32
    iget-object v0, p0, Lcom/pacman/performance/utils/Dialog$1;->val$dialogreturn:Lcom/pacman/performance/utils/Dialog$DialogReturn;

    iget-object v1, p0, Lcom/pacman/performance/utils/Dialog$1;->val$modifiedItems:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-interface {v0, v1}, Lcom/pacman/performance/utils/Dialog$DialogReturn;->dialogReturn(Ljava/lang/String;)V

    .line 33
    return-void

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/pacman/performance/utils/Dialog$1;->val$items:[Ljava/lang/String;

    aget-object v1, v1, p2

    goto :goto_0
.end method
