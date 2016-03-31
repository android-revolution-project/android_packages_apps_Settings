.class Lcom/pacman/performance/fragments/TimeInStateFragment$1;
.super Ljava/lang/Object;
.source "TimeInStateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pacman/performance/fragments/TimeInStateFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pacman/performance/fragments/TimeInStateFragment;


# direct methods
.method constructor <init>(Lcom/pacman/performance/fragments/TimeInStateFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pacman/performance/fragments/TimeInStateFragment$1;->this$0:Lcom/pacman/performance/fragments/TimeInStateFragment;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment$1;->this$0:Lcom/pacman/performance/fragments/TimeInStateFragment;

    invoke-virtual {v0}, Lcom/pacman/performance/fragments/TimeInStateFragment;->refreshData()V

    .line 76
    return-void
.end method
