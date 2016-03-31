.class Lcom/pacman/performance/utils/CommandControl$2;
.super Ljava/lang/Thread;
.source "CommandControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pacman/performance/utils/CommandControl;->runCommand(Ljava/lang/String;Ljava/lang/String;Lcom/pacman/performance/utils/CommandControl$CommandType;ILandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pacman/performance/utils/CommandControl;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$customID:I

.field private final synthetic val$file:Ljava/lang/String;

.field private final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pacman/performance/utils/CommandControl;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pacman/performance/utils/CommandControl$2;->this$0:Lcom/pacman/performance/utils/CommandControl;

    iput-object p2, p0, Lcom/pacman/performance/utils/CommandControl$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/pacman/performance/utils/CommandControl$2;->val$file:Ljava/lang/String;

    iput-object p4, p0, Lcom/pacman/performance/utils/CommandControl$2;->val$value:Ljava/lang/String;

    iput p5, p0, Lcom/pacman/performance/utils/CommandControl$2;->val$customID:I

    .line 80
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "stoppedMpdec":Z
    sget-object v2, Lcom/pacman/performance/utils/CommandControl;->rootHelper:Lcom/pacman/performance/helpers/RootHelper;

    const-string v3, "mpdecision"

    invoke-virtual {v2, v3}, Lcom/pacman/performance/helpers/RootHelper;->moduleActive(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/pacman/performance/utils/CommandControl$2;->this$0:Lcom/pacman/performance/utils/CommandControl;

    const-string v3, "mpdecision"

    iget-object v4, p0, Lcom/pacman/performance/utils/CommandControl$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v7, v4}, Lcom/pacman/performance/utils/CommandControl;->stopModule(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 85
    const/4 v1, 0x1

    .line 88
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/pacman/performance/utils/CommandControl;->cpuHelper:Lcom/pacman/performance/helpers/CPUHelper;

    invoke-virtual {v2}, Lcom/pacman/performance/helpers/CPUHelper;->getCoreCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 97
    if-eqz v1, :cond_1

    .line 98
    iget-object v2, p0, Lcom/pacman/performance/utils/CommandControl$2;->this$0:Lcom/pacman/performance/utils/CommandControl;

    const-string v3, "mpdecision"

    iget-object v4, p0, Lcom/pacman/performance/utils/CommandControl$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v7, v4}, Lcom/pacman/performance/utils/CommandControl;->startModule(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 99
    :cond_1
    return-void

    .line 91
    :cond_2
    sget-object v2, Lcom/pacman/performance/utils/CommandControl;->mUtils:Lcom/pacman/performance/utils/Utils;

    iget-object v3, p0, Lcom/pacman/performance/utils/CommandControl$2;->val$file:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pacman/performance/utils/Utils;->existFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    iget-object v2, p0, Lcom/pacman/performance/utils/CommandControl$2;->this$0:Lcom/pacman/performance/utils/CommandControl;

    iget-object v3, p0, Lcom/pacman/performance/utils/CommandControl$2;->val$file:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pacman/performance/utils/CommandControl$2;->val$value:Ljava/lang/String;

    .line 93
    iget v5, p0, Lcom/pacman/performance/utils/CommandControl$2;->val$customID:I

    iget-object v6, p0, Lcom/pacman/performance/utils/CommandControl$2;->val$activity:Landroid/app/Activity;

    .line 92
    # invokes: Lcom/pacman/performance/utils/CommandControl;->runGeneric(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/pacman/performance/utils/CommandControl;->access$0(Lcom/pacman/performance/utils/CommandControl;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
