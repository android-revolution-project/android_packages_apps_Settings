.class public Lcom/pacman/performance/fragments/TimeInStateFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TimeInStateFragment.java"

# interfaces
.implements Lcom/pacman/performance/utils/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pacman/performance/fragments/TimeInStateFragment$RefreshStateDataTask;
    }
.end annotation


# static fields
.field private static activity:Landroid/app/Activity;


# instance fields
.field private _uiAdditionalStates:Landroid/widget/TextView;

.field private _uiHeaderAdditionalStates:Landroid/widget/TextView;

.field private _uiHeaderTotalStateTime:Landroid/widget/TextView;

.field private _uiStatesView:Landroid/widget/LinearLayout;

.field private _uiTotalStateTime:Landroid/widget/TextView;

.field private _updatingData:Z

.field private cpuSpyApp:Lcom/pacman/performance/cpuspy/CpuSpyApp;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 40
    new-instance v0, Lcom/pacman/performance/cpuspy/CpuSpyApp;

    invoke-direct {v0}, Lcom/pacman/performance/cpuspy/CpuSpyApp;-><init>()V

    iput-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->cpuSpyApp:Lcom/pacman/performance/cpuspy/CpuSpyApp;

    .line 45
    iput-object v1, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiStatesView:Landroid/widget/LinearLayout;

    .line 46
    iput-object v1, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiAdditionalStates:Landroid/widget/TextView;

    .line 47
    iput-object v1, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiTotalStateTime:Landroid/widget/TextView;

    .line 48
    iput-object v1, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiHeaderAdditionalStates:Landroid/widget/TextView;

    .line 49
    iput-object v1, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiHeaderTotalStateTime:Landroid/widget/TextView;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_updatingData:Z

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/pacman/performance/fragments/TimeInStateFragment;)Lcom/pacman/performance/cpuspy/CpuSpyApp;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->cpuSpyApp:Lcom/pacman/performance/cpuspy/CpuSpyApp;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pacman/performance/fragments/TimeInStateFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/pacman/performance/fragments/TimeInStateFragment;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/pacman/performance/fragments/TimeInStateFragment;Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_updatingData:Z

    return-void
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->rootView:Landroid/view/View;

    .line 92
    const v1, 0x7f10032d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 91
    iput-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiStatesView:Landroid/widget/LinearLayout;

    .line 93
    iget-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->rootView:Landroid/view/View;

    .line 94
    const v1, 0x7f10032f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    iput-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiAdditionalStates:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->rootView:Landroid/view/View;

    .line 96
    const v1, 0x7f10032e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    iput-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiHeaderAdditionalStates:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->rootView:Landroid/view/View;

    .line 98
    const v1, 0x7f10032b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    iput-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiHeaderTotalStateTime:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->rootView:Landroid/view/View;

    .line 100
    const v1, 0x7f10032c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    iput-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiTotalStateTime:Landroid/widget/TextView;

    .line 101
    return-void
.end method

.method private generateStateRow(Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .param p1, "state"    # Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 217
    sget-object v15, Lcom/pacman/performance/fragments/TimeInStateFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 219
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v15, 0x7f040113

    const/16 v16, 0x0

    .line 218
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v5, v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 222
    .local v14, "theRow":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pacman/performance/fragments/TimeInStateFragment;->cpuSpyApp:Lcom/pacman/performance/cpuspy/CpuSpyApp;

    invoke-virtual {v15}, Lcom/pacman/performance/cpuspy/CpuSpyApp;->getCpuStateMonitor()Lcom/pacman/performance/cpuspy/CpuStateMonitor;

    move-result-object v6

    .line 223
    .local v6, "monitor":Lcom/pacman/performance/cpuspy/CpuStateMonitor;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->duration:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-float v15, v0

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v15, v15, v16

    invoke-virtual {v6}, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->getTotalStateTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    div-float v7, v15, v16

    .line 224
    .local v7, "per":F
    new-instance v15, Ljava/lang/StringBuilder;

    float-to-int v0, v7

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "%"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 228
    .local v11, "sPer":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v15, v0, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->freq:I

    if-nez v15, :cond_0

    .line 229
    const v15, 0x7f090d16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/pacman/performance/fragments/TimeInStateFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 235
    .local v10, "sFreq":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->duration:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x64

    div-long v12, v16, v18

    .line 236
    .local v12, "tSec":J
    invoke-static {v12, v13}, Lcom/pacman/performance/fragments/TimeInStateFragment;->sToString(J)Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, "sDur":Ljava/lang/String;
    const v15, 0x7f100327

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 241
    .local v4, "freqText":Landroid/widget/TextView;
    const v15, 0x7f100329

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 240
    check-cast v3, Landroid/widget/TextView;

    .line 243
    .local v3, "durText":Landroid/widget/TextView;
    const v15, 0x7f100328

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 242
    check-cast v8, Landroid/widget/TextView;

    .line 244
    .local v8, "perText":Landroid/widget/TextView;
    const v15, 0x7f10032a

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 247
    .local v2, "bar":Landroid/widget/ProgressBar;
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    float-to-int v15, v7

    invoke-virtual {v2, v15}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 253
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 254
    return-object v14

    .line 231
    .end local v2    # "bar":Landroid/widget/ProgressBar;
    .end local v3    # "durText":Landroid/widget/TextView;
    .end local v4    # "freqText":Landroid/widget/TextView;
    .end local v8    # "perText":Landroid/widget/TextView;
    .end local v9    # "sDur":Ljava/lang/String;
    .end local v10    # "sFreq":Ljava/lang/String;
    .end local v12    # "tSec":J
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->freq:I

    move/from16 v16, v0

    move/from16 v0, v16

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " MHz"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "sFreq":Ljava/lang/String;
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 291
    const-string v0, "PACPerformance"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method private static sToString(J)Ljava/lang/String;
    .locals 14
    .param p0, "tSec"    # J

    .prologue
    const-wide/16 v12, 0xa

    const-wide/16 v10, 0x3c

    .line 198
    const-wide/16 v8, 0xe10

    div-long v8, p0, v8

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-long v0, v8

    .line 199
    .local v0, "h":J
    mul-long v8, v0, v10

    mul-long/2addr v8, v10

    sub-long v8, p0, v8

    div-long/2addr v8, v10

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-long v2, v8

    .line 200
    .local v2, "m":J
    rem-long v4, p0, v10

    .line 202
    .local v4, "s":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 203
    .local v6, "sDur":Ljava/lang/String;
    cmp-long v7, v2, v12

    if-gez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 204
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 205
    cmp-long v7, v4, v12

    if-gez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 206
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 208
    return-object v6
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 106
    const v0, 0x7f11000d

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 107
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 108
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pacman/performance/fragments/TimeInStateFragment;->setHasOptionsMenu(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/pacman/performance/fragments/TimeInStateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sput-object v0, Lcom/pacman/performance/fragments/TimeInStateFragment;->activity:Landroid/app/Activity;

    .line 64
    const v0, 0x7f040114

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->rootView:Landroid/view/View;

    .line 65
    invoke-direct {p0}, Lcom/pacman/performance/fragments/TimeInStateFragment;->findViews()V

    .line 69
    if-eqz p3, :cond_0

    .line 70
    const-string v0, "updatingData"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_updatingData:Z

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/pacman/performance/fragments/TimeInStateFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/pacman/performance/fragments/TimeInStateFragment$1;

    invoke-direct {v1, p0}, Lcom/pacman/performance/fragments/TimeInStateFragment$1;-><init>(Lcom/pacman/performance/fragments/TimeInStateFragment;)V

    .line 77
    const-wide/16 v2, 0x32

    .line 72
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 117
    :pswitch_0
    invoke-virtual {p0}, Lcom/pacman/performance/fragments/TimeInStateFragment;->refreshData()V

    goto :goto_0

    .line 121
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->cpuSpyApp:Lcom/pacman/performance/cpuspy/CpuSpyApp;

    invoke-virtual {v0}, Lcom/pacman/performance/cpuspy/CpuSpyApp;->getCpuStateMonitor()Lcom/pacman/performance/cpuspy/CpuStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->setOffsets()V
    :try_end_0
    .catch Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuStateMonitorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_1
    iget-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->cpuSpyApp:Lcom/pacman/performance/cpuspy/CpuSpyApp;

    sget-object v1, Lcom/pacman/performance/fragments/TimeInStateFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/pacman/performance/cpuspy/CpuSpyApp;->saveOffsets(Landroid/app/Activity;)V

    .line 125
    invoke-virtual {p0}, Lcom/pacman/performance/fragments/TimeInStateFragment;->updateView()V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->cpuSpyApp:Lcom/pacman/performance/cpuspy/CpuSpyApp;

    invoke-virtual {v0}, Lcom/pacman/performance/cpuspy/CpuSpyApp;->getCpuStateMonitor()Lcom/pacman/performance/cpuspy/CpuStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->removeOffsets()V

    .line 129
    iget-object v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->cpuSpyApp:Lcom/pacman/performance/cpuspy/CpuSpyApp;

    sget-object v1, Lcom/pacman/performance/fragments/TimeInStateFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/pacman/performance/cpuspy/CpuSpyApp;->saveOffsets(Landroid/app/Activity;)V

    .line 130
    invoke-virtual {p0}, Lcom/pacman/performance/fragments/TimeInStateFragment;->updateView()V

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    goto :goto_1

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x7f100330
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 86
    const-string v0, "updatingData"

    iget-boolean v1, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_updatingData:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    return-void
.end method

.method public refreshData()V
    .locals 4

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_updatingData:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/pacman/performance/fragments/TimeInStateFragment$RefreshStateDataTask;

    invoke-direct {v0, p0}, Lcom/pacman/performance/fragments/TimeInStateFragment$RefreshStateDataTask;-><init>(Lcom/pacman/performance/fragments/TimeInStateFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/pacman/performance/fragments/TimeInStateFragment$RefreshStateDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 194
    :cond_0
    return-void
.end method

.method public updateView()V
    .locals 14

    .prologue
    .line 145
    iget-object v7, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->cpuSpyApp:Lcom/pacman/performance/cpuspy/CpuSpyApp;

    invoke-virtual {v7}, Lcom/pacman/performance/cpuspy/CpuSpyApp;->getCpuStateMonitor()Lcom/pacman/performance/cpuspy/CpuStateMonitor;

    move-result-object v1

    .line 146
    .local v1, "monitor":Lcom/pacman/performance/cpuspy/CpuStateMonitor;
    iget-object v7, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiStatesView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "extraStates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->getStates()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 162
    invoke-virtual {v1}, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->getStates()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 163
    iget-object v7, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiHeaderTotalStateTime:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v7, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiTotalStateTime:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v7, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiStatesView:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    :cond_0
    invoke-virtual {v1}, Lcom/pacman/performance/cpuspy/CpuStateMonitor;->getTotalStateTime()J

    move-result-wide v10

    const-wide/16 v12, 0x64

    div-long v8, v10, v12

    .line 170
    .local v8, "totTime":J
    iget-object v7, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiTotalStateTime:Landroid/widget/TextView;

    invoke-static {v8, v9}, Lcom/pacman/performance/fragments/TimeInStateFragment;->sToString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 174
    const/4 v2, 0x0

    .line 175
    .local v2, "n":I
    const-string v6, ""

    .line 177
    .local v6, "str":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_4

    .line 182
    iget-object v7, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiAdditionalStates:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v7, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiHeaderAdditionalStates:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v7, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiAdditionalStates:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .end local v2    # "n":I
    .end local v6    # "str":Ljava/lang/String;
    :goto_2
    return-void

    .line 148
    .end local v8    # "totTime":J
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;

    .line 149
    .local v5, "state":Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;
    iget-wide v10, v5, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->duration:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    .line 150
    iget-object v10, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiStatesView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v5, v10}, Lcom/pacman/performance/fragments/TimeInStateFragment;->generateStateRow(Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 152
    :cond_2
    iget v10, v5, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->freq:I

    if-nez v10, :cond_3

    .line 153
    const v10, 0x7f090d16

    invoke-virtual {p0, v10}, Lcom/pacman/performance/fragments/TimeInStateFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    iget v11, v5, Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;->freq:I

    div-int/lit16 v11, v11, 0x3e8

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v11, 0x7f090d15

    invoke-virtual {p0, v11}, Lcom/pacman/performance/fragments/TimeInStateFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 177
    .end local v5    # "state":Lcom/pacman/performance/cpuspy/CpuStateMonitor$CpuState;
    .restart local v2    # "n":I
    .restart local v6    # "str":Ljava/lang/String;
    .restart local v8    # "totTime":J
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 178
    .local v4, "s":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "n":I
    .local v3, "n":I
    if-lez v2, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 179
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v2, v3

    .end local v3    # "n":I
    .restart local v2    # "n":I
    goto/16 :goto_1

    .line 186
    .end local v2    # "n":I
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiAdditionalStates:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v7, p0, Lcom/pacman/performance/fragments/TimeInStateFragment;->_uiHeaderAdditionalStates:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method
