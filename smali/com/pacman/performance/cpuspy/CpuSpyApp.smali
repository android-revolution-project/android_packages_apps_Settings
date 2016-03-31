.class public Lcom/pacman/performance/cpuspy/CpuSpyApp;
.super Landroid/app/Application;
.source "CpuSpyApp.java"


# static fields
.field private static final PREF_NAME:Ljava/lang/String; = "CpuSpyPreferences"

.field private static final PREF_OFFSETS:Ljava/lang/String; = "offsets"


# instance fields
.field private _monitor:Lcom/pacman/performance/cpuspy/CpuStateMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 23
    new-instance v0, Lcom/pacman/performance/cpuspy/CpuStateMonitor;

    invoke-direct {v0}, Lcom/pacman/performance/cpuspy/CpuStateMonitor;-><init>()V

    iput-object v0, p0, Lcom/pacman/performance/cpuspy/CpuSpyApp;->_monitor:Lcom/pacman/performance/cpuspy/CpuStateMonitor;

    .line 17
    return-void
.end method


# virtual methods
.method public getCpuStateMonitor()Lcom/pacman/performance/cpuspy/CpuStateMonitor;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pacman/performance/cpuspy/CpuSpyApp;->_monitor:Lcom/pacman/performance/cpuspy/CpuStateMonitor;

    return-object v0
.end method

.method public loadOffsets()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 44
    const-string v6, "CpuSpyPreferences"

    invoke-virtual {p0, v6, v7}, Lcom/pacman/performance/cpuspy/CpuSpyApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 46
    .local v5, "settings":Landroid/content/SharedPreferences;
    const-string v6, "offsets"

    const-string v8, ""

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "prefs":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v12, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v1, "offsets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "sOffsets":[Ljava/lang/String;
    array-length v8, v4

    move v6, v7

    :goto_1
    if-lt v6, v8, :cond_2

    .line 58
    iget-object v6, p0, Lcom/pacman/performance/cpuspy/CpuSpyApp;->_monitor:Lcom/pacman/performance/cpuspy/CpuStateMonitor;

    invoke-virtual {v6, v1}, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->setOffsets(Ljava/util/Map;)V

    goto :goto_0

    .line 53
    :cond_2
    aget-object v0, v4, v6

    .line 54
    .local v0, "offset":Ljava/lang/String;
    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "parts":[Ljava/lang/String;
    aget-object v9, v2, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-object v10, v2, v12

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/pacman/performance/cpuspy/CpuSpyApp;->loadOffsets()V

    .line 32
    return-void
.end method

.method public saveOffsets(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    const-string v4, "CpuSpyPreferences"

    .line 67
    const/4 v5, 0x0

    .line 66
    invoke-virtual {p1, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 68
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, ""

    .line 72
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/pacman/performance/cpuspy/CpuSpyApp;->_monitor:Lcom/pacman/performance/cpuspy/CpuStateMonitor;

    invoke-virtual {v4}, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->getOffsets()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 76
    const-string v4, "offsets"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void

    .line 72
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 73
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
