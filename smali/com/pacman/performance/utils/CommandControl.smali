.class public Lcom/pacman/performance/utils/CommandControl;
.super Ljava/lang/Object;
.source "CommandControl.java"

# interfaces
.implements Lcom/pacman/performance/utils/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pacman/performance/utils/CommandControl$CommandType;
    }
.end annotation


# instance fields
.field public final fileSplit:Ljava/lang/String;

.field public final idSplit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "qrfdvbfdgsdfasd"

    iput-object v0, p0, Lcom/pacman/performance/utils/CommandControl;->fileSplit:Ljava/lang/String;

    .line 9
    const-string v0, "sdfwefwefwe"

    iput-object v0, p0, Lcom/pacman/performance/utils/CommandControl;->idSplit:Ljava/lang/String;

    .line 6
    return-void
.end method

.method static synthetic access$0(Lcom/pacman/performance/utils/CommandControl;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pacman/performance/utils/CommandControl;->runGeneric(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method private runGeneric(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "customID"    # I
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v0, Lcom/pacman/performance/utils/CommandControl;->rootHelper:Lcom/pacman/performance/helpers/RootHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pacman/performance/helpers/RootHelper;->runCommand(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/pacman/performance/utils/CommandControl;->commandSaver(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    .line 45
    return-void
.end method


# virtual methods
.method public bringCoresOnline()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/pacman/performance/utils/CommandControl$1;

    invoke-direct {v0, p0}, Lcom/pacman/performance/utils/CommandControl$1;-><init>(Lcom/pacman/performance/utils/CommandControl;)V

    .line 73
    invoke-virtual {v0}, Lcom/pacman/performance/utils/CommandControl$1;->start()V

    .line 74
    return-void
.end method

.method public commandSaver(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 6
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "customID"    # I
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    sget-object v2, Lcom/pacman/performance/utils/CommandControl;->mUtils:Lcom/pacman/performance/utils/Utils;

    invoke-virtual {v2, p1, p2, p4}, Lcom/pacman/performance/utils/Utils;->saveString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 19
    sget-object v2, Lcom/pacman/performance/utils/CommandControl;->mUtils:Lcom/pacman/performance/utils/Utils;

    const-string v3, "names"

    const-string v4, "nothing_found"

    invoke-virtual {v2, v3, v4, p4}, Lcom/pacman/performance/utils/Utils;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "saved":Ljava/lang/String;
    const/4 v2, -0x1

    if-le p3, v2, :cond_2

    .line 21
    sget-object v2, Lcom/pacman/performance/utils/CommandControl;->mUtils:Lcom/pacman/performance/utils/Utils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "sdfwefwefwe"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2, p4}, Lcom/pacman/performance/utils/Utils;->saveString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "sdfwefwefwe"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 24
    sget-object v3, Lcom/pacman/performance/utils/CommandControl;->mUtils:Lcom/pacman/performance/utils/Utils;

    const-string v4, "names"

    .line 25
    const-string v2, "nothing_found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "sdfwefwefwe"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 26
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    :goto_0
    invoke-virtual {v3, v4, v2, p4}, Lcom/pacman/performance/utils/Utils;->saveString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 38
    .end local p1    # "file":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 26
    .restart local p1    # "file":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "qrfdvbfdgsdfasd"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "sdfwefwefwe"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 27
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 29
    :cond_2
    sget-object v2, Lcom/pacman/performance/utils/CommandControl;->mUtils:Lcom/pacman/performance/utils/Utils;

    invoke-virtual {v2, p1, p2, p4}, Lcom/pacman/performance/utils/Utils;->saveString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 31
    sget-object v2, Lcom/pacman/performance/utils/CommandControl;->mUtils:Lcom/pacman/performance/utils/Utils;

    const-string v3, "names"

    const-string v4, "nothing_found"

    invoke-virtual {v2, v3, v4, p4}, Lcom/pacman/performance/utils/Utils;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    sget-object v2, Lcom/pacman/performance/utils/CommandControl;->mUtils:Lcom/pacman/performance/utils/Utils;

    const-string v3, "names"

    .line 35
    const-string v4, "nothing_found"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 34
    .end local p1    # "file":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v3, p1, p4}, Lcom/pacman/performance/utils/Utils;->saveString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 35
    .restart local p1    # "file":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "qrfdvbfdgsdfasd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 36
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public runCommand(Ljava/lang/String;Ljava/lang/String;Lcom/pacman/performance/utils/CommandControl$CommandType;ILandroid/app/Activity;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;
    .param p3, "command"    # Lcom/pacman/performance/utils/CommandControl$CommandType;
    .param p4, "customID"    # I
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 78
    sget-object v0, Lcom/pacman/performance/utils/CommandControl$CommandType;->CPU:Lcom/pacman/performance/utils/CommandControl$CommandType;

    if-ne p3, v0, :cond_1

    .line 79
    sget-object v0, Lcom/pacman/performance/utils/CommandControl;->cpuHelper:Lcom/pacman/performance/helpers/CPUHelper;

    invoke-virtual {v0}, Lcom/pacman/performance/helpers/CPUHelper;->getCoreCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 80
    new-instance v0, Lcom/pacman/performance/utils/CommandControl$2;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pacman/performance/utils/CommandControl$2;-><init>(Lcom/pacman/performance/utils/CommandControl;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    invoke-virtual {v0}, Lcom/pacman/performance/utils/CommandControl$2;->start()V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    sget-object v0, Lcom/pacman/performance/utils/CommandControl$CommandType;->GENERIC:Lcom/pacman/performance/utils/CommandControl$CommandType;

    if-ne p3, v0, :cond_0

    .line 103
    invoke-direct {p0, p2, p1, p4, p5}, Lcom/pacman/performance/utils/CommandControl;->runGeneric(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_0
.end method

.method public startModule(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 3
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "save"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sget-object v0, Lcom/pacman/performance/utils/CommandControl;->rootHelper:Lcom/pacman/performance/helpers/RootHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pacman/performance/helpers/RootHelper;->runCommand(Ljava/lang/String;)V

    .line 50
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/pacman/performance/utils/CommandControl;->commandSaver(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    .line 51
    :cond_0
    return-void
.end method

.method public stopModule(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 3
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "save"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-object v0, Lcom/pacman/performance/utils/CommandControl;->rootHelper:Lcom/pacman/performance/helpers/RootHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stop "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pacman/performance/helpers/RootHelper;->runCommand(Ljava/lang/String;)V

    .line 55
    const-string v0, "mpdecision"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/pacman/performance/utils/CommandControl;->bringCoresOnline()V

    .line 57
    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stop "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/pacman/performance/utils/CommandControl;->commandSaver(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    .line 58
    :cond_1
    return-void
.end method
