.class public Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuStateMonitorException;
.super Ljava/lang/Exception;
.source "CpuStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pacman/performance/cpuspy/CpuStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CpuStateMonitorException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/pacman/performance/cpuspy/CpuStateMonitor;


# direct methods
.method public constructor <init>(Lcom/pacman/performance/cpuspy/CpuStateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuStateMonitorException;->this$0:Lcom/pacman/performance/cpuspy/CpuStateMonitor;

    .line 45
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method
