.class public Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;
.super Ljava/lang/Object;
.source "CpuStateMonitor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pacman/performance/cpuspy/CpuStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CpuState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;",
        ">;"
    }
.end annotation


# instance fields
.field public duration:J

.field public freq:I

.field final synthetic this$0:Lcom/pacman/performance/cpuspy/CpuStateMonitor;


# direct methods
.method public constructor <init>(Lcom/pacman/performance/cpuspy/CpuStateMonitor;IJ)V
    .locals 3
    .param p2, "a"    # I
    .param p3, "b"    # J

    .prologue
    .line 54
    iput-object p1, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->this$0:Lcom/pacman/performance/cpuspy/CpuStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->freq:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->duration:J

    .line 55
    iput p2, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->freq:I

    .line 56
    iput-wide p3, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->duration:J

    .line 57
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;)I
    .locals 3
    .param p1, "state"    # Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Integer;

    iget v2, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->freq:I

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 65
    .local v0, "a":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/Integer;

    iget v2, p1, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->freq:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 66
    .local v1, "b":Ljava/lang/Integer;
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;

    invoke-virtual {p0, p1}, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->compareTo(Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;)I

    move-result v0

    return v0
.end method
