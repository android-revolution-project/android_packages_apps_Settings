.class public Lcom/pacman/performance/cpuspy/CpuStateMonitor;
.super Ljava/lang/Object;
.source "CpuStateMonitor.java"

# interfaces
.implements Lcom/pacman/performance/utils/Constants;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseValueOf"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;,
        Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuStateMonitorException;
    }
.end annotation


# instance fields
.field private _offsets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private _states:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->_states:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->_offsets:Ljava/util/Map;

    .line 32
    return-void
.end method

.method private readInStates(Ljava/io/BufferedReader;)V
    .locals 8
    .param p1, "br"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuStateMonitorException;
        }
    .end annotation

    .prologue
    .line 191
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 201
    return-void

    .line 193
    :cond_0
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "nums":[Ljava/lang/String;
    iget-object v3, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->_states:Ljava/util/List;

    new-instance v4, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 195
    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;-><init>(Lcom/pacman/performance/cpuspy/CpuStateMonitor;IJ)V

    .line 194
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "nums":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuStateMonitorException;

    .line 199
    const-string v4, "Problem processing time-in-states file"

    .line 198
    invoke-direct {v3, p0, v4}, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuStateMonitorException;-><init>(Lcom/pacman/performance/cpuspy/CpuStateMonitor;Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getOffsets()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->_offsets:Ljava/util/Map;

    return-object v0
.end method

.method public getStates()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v5, "states":Ljava/util/List;, "Ljava/util/List<Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;>;"
    iget-object v6, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->_states:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 97
    .end local v5    # "states":Ljava/util/List;, "Ljava/util/List<Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;>;"
    :goto_1
    return-object v5

    .line 78
    .restart local v5    # "states":Ljava/util/List;, "Ljava/util/List<Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;>;"
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;

    .line 79
    .local v4, "state":Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;
    iget-wide v0, v4, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->duration:J

    .line 80
    .local v0, "duration":J
    iget-object v6, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->_offsets:Ljava/util/Map;

    iget v8, v4, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->freq:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    iget-object v6, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->_offsets:Ljava/util/Map;

    iget v8, v4, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->freq:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 82
    .local v2, "offset":J
    cmp-long v6, v2, v0

    if-gtz v6, :cond_2

    .line 83
    sub-long/2addr v0, v2

    .line 94
    .end local v2    # "offset":J
    :cond_1
    new-instance v6, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;

    iget v8, v4, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->freq:I

    invoke-direct {v6, p0, v8, v0, v1}, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;-><init>(Lcom/pacman/performance/cpuspy/CpuStateMonitor;IJ)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    .restart local v2    # "offset":J
    :cond_2
    iget-object v6, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->_offsets:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 90
    invoke-virtual {p0}, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->getStates()Ljava/util/List;

    move-result-object v5

    goto :goto_1
.end method

.method public getTotalStateTime()J
    .locals 10

    .prologue
    .line 105
    const-wide/16 v4, 0x0

    .line 106
    .local v4, "sum":J
    const-wide/16 v2, 0x0

    .line 108
    .local v2, "offset":J
    iget-object v6, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->_states:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 112
    iget-object v6, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->_offsets:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 116
    sub-long v6, v4, v2

    return-wide v6

    .line 108
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;

    .line 109
    .local v1, "state":Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;
    iget-wide v8, v1, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->duration:J

    add-long/2addr v4, v8

    goto :goto_0

    .line 112
    .end local v1    # "state":Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v2, v8

    goto :goto_1
.end method

.method public removeOffsets()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->_offsets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 147
    return-void
.end method

.method public setOffsets()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuStateMonitorException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v1, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->_offsets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 137
    invoke-virtual {p0}, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->updateStates()Ljava/util/List;

    .line 139
    iget-object v1, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->_states:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    return-void

    .line 139
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;

    .line 140
    .local v0, "state":Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;
    iget-object v2, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->_offsets:Ljava/util/Map;

    iget v3, v0, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->freq:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, v0, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->duration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setOffsets(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "offsets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->_offsets:Ljava/util/Map;

    .line 129
    return-void
.end method

.method public updateStates()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuStateMonitorException;
        }
    .end annotation

    .prologue
    .line 159
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 160
    .local v3, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 161
    .local v2, "ir":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 162
    .local v0, "br":Ljava/io/BufferedReader;
    iget-object v6, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->_states:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 163
    invoke-direct {p0, v0}, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->readInStates(Ljava/io/BufferedReader;)V

    .line 164
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 174
    sub-long/2addr v6, v8

    .line 175
    const-wide/16 v8, 0xa

    .line 174
    div-long v4, v6, v8

    .line 176
    .local v4, "sleepTime":J
    iget-object v6, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->_states:Ljava/util/List;

    new-instance v7, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8, v4, v5}, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;-><init>(Lcom/pacman/performance/cpuspy/CpuStateMonitor;IJ)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v6, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->_states:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 180
    iget-object v6, p0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->_states:Ljava/util/List;

    return-object v6

    .line 165
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "ir":Ljava/io/InputStreamReader;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "sleepTime":J
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuStateMonitorException;

    .line 167
    const-string v7, "Problem opening time-in-states file"

    .line 166
    invoke-direct {v6, p0, v7}, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuStateMonitorException;-><init>(Lcom/pacman/performance/cpuspy/CpuStateMonitor;Ljava/lang/String;)V

    throw v6
.end method
