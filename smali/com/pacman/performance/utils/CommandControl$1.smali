.class Lcom/pacman/performance/utils/CommandControl$1;
.super Ljava/lang/Thread;
.source "CommandControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pacman/performance/utils/CommandControl;->bringCoresOnline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pacman/performance/utils/CommandControl;


# direct methods
.method constructor <init>(Lcom/pacman/performance/utils/CommandControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pacman/performance/utils/CommandControl$1;->this$0:Lcom/pacman/performance/utils/CommandControl;

    .line 61
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v2, Lcom/pacman/performance/utils/CommandControl;->cpuHelper:Lcom/pacman/performance/helpers/CPUHelper;

    invoke-virtual {v2}, Lcom/pacman/performance/helpers/CPUHelper;->getCoreCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 68
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 72
    :goto_1
    return-void

    .line 65
    :cond_0
    sget-object v2, Lcom/pacman/performance/utils/CommandControl;->rootHelper:Lcom/pacman/performance/helpers/RootHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo 1 > "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    const-string v4, "/sys/devices/system/cpu/cpu0/online"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Lcom/pacman/performance/helpers/RootHelper;->runCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
