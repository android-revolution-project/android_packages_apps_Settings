.class public Lcom/pacman/performance/fragments/TimeInStateFragment$RefreshStateDataTask;
.super Landroid/os/AsyncTask;
.source "TimeInStateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pacman/performance/fragments/TimeInStateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RefreshStateDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pacman/performance/fragments/TimeInStateFragment;


# direct methods
.method protected constructor <init>(Lcom/pacman/performance/fragments/TimeInStateFragment;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/pacman/performance/fragments/TimeInStateFragment$RefreshStateDataTask;->this$0:Lcom/pacman/performance/fragments/TimeInStateFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pacman/performance/fragments/TimeInStateFragment$RefreshStateDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 263
    iget-object v2, p0, Lcom/pacman/performance/fragments/TimeInStateFragment$RefreshStateDataTask;->this$0:Lcom/pacman/performance/fragments/TimeInStateFragment;

    # getter for: Lcom/pacman/performance/fragments/TimeInStateFragment;->cpuSpyApp:Lcom/pacman/performance/cpuspy/CpuSpyApp;
    invoke-static {v2}, Lcom/pacman/performance/fragments/TimeInStateFragment;->access$0(Lcom/pacman/performance/fragments/TimeInStateFragment;)Lcom/pacman/performance/cpuspy/CpuSpyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pacman/performance/cpuspy/CpuSpyApp;->getCpuStateMonitor()Lcom/pacman/performance/cpuspy/CpuStateMonitor;

    move-result-object v1

    .line 265
    .local v1, "monitor":Lcom/pacman/performance/cpuspy/CpuStateMonitor;
    :try_start_0
    invoke-virtual {v1}, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->updateStates()Ljava/util/List;
    :try_end_0
    .catch Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuStateMonitorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuStateMonitorException;
    const-string v2, "PACPerformance"

    const-string v3, "Problem getting CPU states"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pacman/performance/fragments/TimeInStateFragment$RefreshStateDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment$RefreshStateDataTask;->this$0:Lcom/pacman/performance/fragments/TimeInStateFragment;

    const-string v1, "finished data update"

    # invokes: Lcom/pacman/performance/fragments/TimeInStateFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/pacman/performance/fragments/TimeInStateFragment;->access$1(Lcom/pacman/performance/fragments/TimeInStateFragment;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment$RefreshStateDataTask;->this$0:Lcom/pacman/performance/fragments/TimeInStateFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pacman/performance/fragments/TimeInStateFragment;->access$2(Lcom/pacman/performance/fragments/TimeInStateFragment;Z)V

    .line 285
    iget-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment$RefreshStateDataTask;->this$0:Lcom/pacman/performance/fragments/TimeInStateFragment;

    invoke-virtual {v0}, Lcom/pacman/performance/fragments/TimeInStateFragment;->updateView()V

    .line 286
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment$RefreshStateDataTask;->this$0:Lcom/pacman/performance/fragments/TimeInStateFragment;

    const-string v1, "starting data update"

    # invokes: Lcom/pacman/performance/fragments/TimeInStateFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/pacman/performance/fragments/TimeInStateFragment;->access$1(Lcom/pacman/performance/fragments/TimeInStateFragment;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment$RefreshStateDataTask;->this$0:Lcom/pacman/performance/fragments/TimeInStateFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pacman/performance/fragments/TimeInStateFragment;->access$2(Lcom/pacman/performance/fragments/TimeInStateFragment;Z)V

    .line 278
    return-void
.end method
