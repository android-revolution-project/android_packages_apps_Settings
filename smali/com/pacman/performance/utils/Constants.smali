.class public interface abstract Lcom/pacman/performance/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final BUILD_PROP:Ljava/lang/String; = "/system/build.prop"

.field public static final COMMAND_NAME:Ljava/lang/String; = "names"

.field public static final CPU_AVAILABLE_GOVERNORS:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

.field public static final CPU_CORE_ONLINE:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/online"

.field public static final CPU_CUR_FREQ:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

.field public static final CPU_GOVERNOR_TUNABLES:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/%s"

.field public static final CPU_INTELLI_PLUG:Ljava/lang/String; = "/sys/module/intelli_plug/parameters/intelli_plug_active"

.field public static final CPU_INTELLI_PLUG_ECO:Ljava/lang/String; = "/sys/module/intelli_plug/parameters/eco_mode_active"

.field public static final CPU_MAX_FREQ:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

.field public static final CPU_MC_POWER_SAVING:Ljava/lang/String; = "/sys/devices/system/cpu/sched_mc_power_savings"

.field public static final CPU_MIN_FREQ:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

.field public static final CPU_MPDEC:Ljava/lang/String; = "mpdecision"

.field public static final CPU_MPDECISION_BINARY:Ljava/lang/String; = "/system/bin/mpdecision"

.field public static final CPU_SCALING_GOVERNOR:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

.field public static final CPU_TIME_STATE:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

.field public static final CPU_VOLTAGE:Ljava/lang/String; = "/sys/devices/system/cpu/cpu%d/cpufreq/UV_mV_table"

.field public static final EXTERNAL_STORAGE_DIRECTORY:Ljava/lang/String;

.field public static final GPU_2D_AVAILABLE_FREQS_ARRAY:[Ljava/lang/String;

.field public static final GPU_2D_CUR_FREQ_ARRAY:[Ljava/lang/String;

.field public static final GPU_2D_MAX_FREQ_ARRAY:[Ljava/lang/String;

.field public static final GPU_2D_SCALING_GOVERNOR_ARRAY:[Ljava/lang/String;

.field public static final GPU_3D_AVAILABLE_FREQS_ARRAY:[Ljava/lang/String;

.field public static final GPU_3D_AVAILABLE_GOVERNORS_ARRAY:[Ljava/lang/String;

.field public static final GPU_3D_CUR_FREQ_ARRAY:[Ljava/lang/String;

.field public static final GPU_3D_MAX_FREQ_ARRAY:[Ljava/lang/String;

.field public static final GPU_3D_SCALING_GOVERNOR_ARRAY:[Ljava/lang/String;

.field public static final GPU_ARRAY:[[Ljava/lang/String;

.field public static final GPU_AVAILABLE_FDB00000_QCOM_FREQS:Ljava/lang/String; = "/sys/devices/fdb00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/gpu_available_frequencies"

.field public static final GPU_AVAILABLE_FDB00000_QCOM_GOVERNORS:Ljava/lang/String; = "/sys/devices/fdb00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/devfreq/available_governors"

.field public static final GPU_AVAILABLE_KGSL2D0_QCOM_FREQS:Ljava/lang/String; = "/sys/devices/platform/kgsl-2d0.0/kgsl/kgsl-2d0/gpu_available_frequencies"

.field public static final GPU_AVAILABLE_KGSL3D0_QCOM_FREQS:Ljava/lang/String; = "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/gpu_available_frequencies"

.field public static final GPU_CUR_FDB00000_QCOM_FREQ:Ljava/lang/String; = "/sys/devices/fdb00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/devfreq/cur_freq"

.field public static final GPU_CUR_KGSL2D0_QCOM_FREQ:Ljava/lang/String; = "/sys/devices/platform/kgsl-2d0.0/kgsl/kgsl-2d0/gpuclk"

.field public static final GPU_CUR_KGSL3D0_QCOM_FREQ:Ljava/lang/String; = "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/gpuclk"

.field public static final GPU_GENERIC_GOVERNORS:Ljava/lang/String; = "performance powersave ondemand simple"

.field public static final GPU_MAX_FDB00000_QCOM_FREQ:Ljava/lang/String; = "/sys/devices/fdb00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/max_gpuclk"

.field public static final GPU_MAX_KGSL2D0_QCOM_FREQ:Ljava/lang/String; = "/sys/devices/platform/kgsl-2d0.0/kgsl/kgsl-2d0/max_gpuclk"

.field public static final GPU_MAX_KGSL3D0_QCOM_FREQ:Ljava/lang/String; = "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/max_gpuclk"

.field public static final GPU_SCALING_FDB00000_QCOM_GOVERNOR:Ljava/lang/String; = "/sys/devices/fdb00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/devfreq/governor"

.field public static final GPU_SCALING_KGSL2D0_QCOM_GOVERNOR:Ljava/lang/String; = "/sys/devices/platform/kgsl-2d0.0/kgsl/kgsl-2d0/pwrscale/trustzone/governor"

.field public static final GPU_SCALING_KGSL3D0_QCOM_GOVERNOR:Ljava/lang/String; = "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/pwrscale/trustzone/governor"

.field public static final IO_EXTERNAL_READ_AHEAD:Ljava/lang/String; = "/sys/block/mmcblk1/queue/read_ahead_kb"

.field public static final IO_EXTERNAL_SCHEDULER:Ljava/lang/String; = "/sys/block/mmcblk1/queue/scheduler"

.field public static final IO_EXTERNAL_SCHEDULER_TUNABLE:Ljava/lang/String; = "/sys/block/mmcblk1/queue/iosched"

.field public static final IO_INTERNAL_READ_AHEAD:Ljava/lang/String; = "/sys/block/mmcblk0/queue/read_ahead_kb"

.field public static final IO_INTERNAL_SCHEDULER:Ljava/lang/String; = "/sys/block/mmcblk0/queue/scheduler"

.field public static final IO_INTERNAL_SCHEDULER_TUNABLE:Ljava/lang/String; = "/sys/block/mmcblk0/queue/iosched"

.field public static final KSM_FOLDER:Ljava/lang/String; = "/sys/kernel/mm/ksm"

.field public static final KSM_FULL_SCANS:Ljava/lang/String; = "/sys/kernel/mm/ksm/full_scans"

.field public static final KSM_INFOS:[Ljava/lang/String;

.field public static final KSM_PAGES_SHARED:Ljava/lang/String; = "/sys/kernel/mm/ksm/pages_shared"

.field public static final KSM_PAGES_SHARING:Ljava/lang/String; = "/sys/kernel/mm/ksm/pages_sharing"

.field public static final KSM_PAGES_TO_SCAN:Ljava/lang/String; = "/sys/kernel/mm/ksm/pages_to_scan"

.field public static final KSM_PAGES_UNSHARED:Ljava/lang/String; = "/sys/kernel/mm/ksm/pages_unshared"

.field public static final KSM_PAGES_VOLATILE:Ljava/lang/String; = "/sys/kernel/mm/ksm/pages_volatile"

.field public static final KSM_RUN:Ljava/lang/String; = "/sys/kernel/mm/ksm/run"

.field public static final KSM_SLEEP_MILLISECONDS:Ljava/lang/String; = "/sys/kernel/mm/ksm/sleep_millisecs"

.field public static final LMK_MINFREE:Ljava/lang/String; = "/sys/module/lowmemorykiller/parameters/minfree"

.field public static final NOTI_STATS_ID:I = 0x0

.field public static final PAC_BACKUP:Ljava/lang/String;

.field public static final PARTITON_PATH:Ljava/lang/String; = "/dev/block/platform"

.field public static final PER_APP_MODE_ID:I = 0x1

.field public static final PREF_NAME:Ljava/lang/String; = "commands"

.field public static final PROC_CPUINFO:Ljava/lang/String; = "/proc/cpuinfo"

.field public static final PROC_MEMINFO:Ljava/lang/String; = "/proc/meminfo"

.field public static final PROC_STAT:Ljava/lang/String; = "/proc/stat"

.field public static final PROC_VERSION:Ljava/lang/String; = "/proc/version"

.field public static final SCREEN_ARRAY:[[Ljava/lang/String;

.field public static final SCREEN_DIAG0_POWER:Ljava/lang/String; = "/sys/devices/platform/DIAG0.0/power_rail"

.field public static final SCREEN_DIAG0_POWER_CTRL:Ljava/lang/String; = "/sys/devices/platform/DIAG0.0/power_rail_ctrl"

.field public static final SCREEN_KCAL_ARRAY:[Ljava/lang/String;

.field public static final SCREEN_KCAL_CTRL:Ljava/lang/String; = "/sys/devices/platform/kcal_ctrl.0/kcal"

.field public static final SCREEN_KCAL_CTRL_ARRAY:[Ljava/lang/String;

.field public static final SCREEN_KCAL_CTRL_CTRL:Ljava/lang/String; = "/sys/devices/platform/kcal_ctrl.0/kcal_ctrl"

.field public static final TAG:Ljava/lang/String; = "PACPerformance"

.field public static final TMP_FILE:Ljava/lang/String; = "/data/local/pacperformance.tmp"

.field public static final VM_PATH:Ljava/lang/String; = "/proc/sys/vm"

.field public static final cpuHelper:Lcom/pacman/performance/helpers/CPUHelper;

.field public static final cpuVoltageHelper:Lcom/pacman/performance/helpers/CPUVoltageHelper;

.field public static final enter_anim:I = 0x10a0002

.field public static final exit_anim:I = 0x10a0003

.field public static final gpuHelper:Lcom/pacman/performance/helpers/GPUHelper;

.field public static final ioHelper:Lcom/pacman/performance/helpers/IOHelper;

.field public static final kernelsamepagemergingHelper:Lcom/pacman/performance/helpers/KernelSamepageMergingHelper;

.field public static final lowmemorykillerHelper:Lcom/pacman/performance/helpers/LowMemoryKillerHelper;

.field public static final mBackupFragment:Lcom/pacman/performance/fragments/BackupFragment;

.field public static final mBuildpropFragment:Lcom/pacman/performance/fragments/BuildpropFragment;

.field public static final mCPUFragment:Lcom/pacman/performance/fragments/CPUFragment;

.field public static final mCPUStatsFragment:Lcom/pacman/performance/fragments/CPUStatsFragment;

.field public static final mCPUVoltageFragment:Lcom/pacman/performance/fragments/CPUVoltageFragment;

.field public static final mCommandControl:Lcom/pacman/performance/utils/CommandControl;

.field public static final mCustomCommanderFragment:Lcom/pacman/performance/fragments/CustomCommanderFragment;

.field public static final mDialog:Lcom/pacman/performance/utils/Dialog;

.field public static final mGPUFragment:Lcom/pacman/performance/fragments/GPUFragment;

.field public static final mIOSchedulerFragment:Lcom/pacman/performance/fragments/IOSchedulerFragment;

.field public static final mKernelInformationFragment:Lcom/pacman/performance/fragments/KernelInformationFragment;

.field public static final mKernelSamepageMerging:Lcom/pacman/performance/fragments/KernelSamepageMerging;

.field public static final mLowMemoryKillerFragment:Lcom/pacman/performance/fragments/LowMemoryKillerFragment;

.field public static final mMemoryStatsFragment:Lcom/pacman/performance/fragments/MemoryStatsFragment;

.field public static final mScreenFragment:Lcom/pacman/performance/fragments/ScreenFragment;

.field public static final mTimeInStateFragment:Lcom/pacman/performance/fragments/TimeInStateFragment;

.field public static final mUtils:Lcom/pacman/performance/utils/Utils;

.field public static final mVirtualMachineFragment:Lcom/pacman/performance/fragments/VirtualMachineFragment;

.field public static final rootHelper:Lcom/pacman/performance/helpers/RootHelper;

.field public static final screenHelper:Lcom/pacman/performance/helpers/ScreenHelper;

.field public static final virtualmachineHelper:Lcom/pacman/performance/helpers/VirtualMachineHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    sput-object v0, Lcom/pacman/performance/utils/Constants;->EXTERNAL_STORAGE_DIRECTORY:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pacman/performance/utils/Constants;->EXTERNAL_STORAGE_DIRECTORY:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/PACBackup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pacman/performance/utils/Constants;->PAC_BACKUP:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/pacman/performance/fragments/BackupFragment;

    invoke-direct {v0}, Lcom/pacman/performance/fragments/BackupFragment;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->mBackupFragment:Lcom/pacman/performance/fragments/BackupFragment;

    .line 49
    new-instance v0, Lcom/pacman/performance/fragments/BuildpropFragment;

    invoke-direct {v0}, Lcom/pacman/performance/fragments/BuildpropFragment;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->mBuildpropFragment:Lcom/pacman/performance/fragments/BuildpropFragment;

    .line 50
    new-instance v0, Lcom/pacman/performance/fragments/CPUFragment;

    invoke-direct {v0}, Lcom/pacman/performance/fragments/CPUFragment;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->mCPUFragment:Lcom/pacman/performance/fragments/CPUFragment;

    .line 51
    new-instance v0, Lcom/pacman/performance/fragments/CPUStatsFragment;

    invoke-direct {v0}, Lcom/pacman/performance/fragments/CPUStatsFragment;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->mCPUStatsFragment:Lcom/pacman/performance/fragments/CPUStatsFragment;

    .line 52
    new-instance v0, Lcom/pacman/performance/fragments/CPUVoltageFragment;

    invoke-direct {v0}, Lcom/pacman/performance/fragments/CPUVoltageFragment;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->mCPUVoltageFragment:Lcom/pacman/performance/fragments/CPUVoltageFragment;

    .line 53
    new-instance v0, Lcom/pacman/performance/fragments/CustomCommanderFragment;

    invoke-direct {v0}, Lcom/pacman/performance/fragments/CustomCommanderFragment;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->mCustomCommanderFragment:Lcom/pacman/performance/fragments/CustomCommanderFragment;

    .line 54
    new-instance v0, Lcom/pacman/performance/fragments/GPUFragment;

    invoke-direct {v0}, Lcom/pacman/performance/fragments/GPUFragment;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->mGPUFragment:Lcom/pacman/performance/fragments/GPUFragment;

    .line 55
    new-instance v0, Lcom/pacman/performance/fragments/KernelInformationFragment;

    invoke-direct {v0}, Lcom/pacman/performance/fragments/KernelInformationFragment;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->mKernelInformationFragment:Lcom/pacman/performance/fragments/KernelInformationFragment;

    .line 56
    new-instance v0, Lcom/pacman/performance/fragments/KernelSamepageMerging;

    invoke-direct {v0}, Lcom/pacman/performance/fragments/KernelSamepageMerging;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->mKernelSamepageMerging:Lcom/pacman/performance/fragments/KernelSamepageMerging;

    .line 57
    new-instance v0, Lcom/pacman/performance/fragments/IOSchedulerFragment;

    invoke-direct {v0}, Lcom/pacman/performance/fragments/IOSchedulerFragment;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->mIOSchedulerFragment:Lcom/pacman/performance/fragments/IOSchedulerFragment;

    .line 58
    new-instance v0, Lcom/pacman/performance/fragments/LowMemoryKillerFragment;

    invoke-direct {v0}, Lcom/pacman/performance/fragments/LowMemoryKillerFragment;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->mLowMemoryKillerFragment:Lcom/pacman/performance/fragments/LowMemoryKillerFragment;

    .line 59
    new-instance v0, Lcom/pacman/performance/fragments/MemoryStatsFragment;

    invoke-direct {v0}, Lcom/pacman/performance/fragments/MemoryStatsFragment;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->mMemoryStatsFragment:Lcom/pacman/performance/fragments/MemoryStatsFragment;

    .line 60
    new-instance v0, Lcom/pacman/performance/fragments/ScreenFragment;

    invoke-direct {v0}, Lcom/pacman/performance/fragments/ScreenFragment;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->mScreenFragment:Lcom/pacman/performance/fragments/ScreenFragment;

    .line 61
    new-instance v0, Lcom/pacman/performance/fragments/TimeInStateFragment;

    invoke-direct {v0}, Lcom/pacman/performance/fragments/TimeInStateFragment;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->mTimeInStateFragment:Lcom/pacman/performance/fragments/TimeInStateFragment;

    .line 62
    new-instance v0, Lcom/pacman/performance/fragments/VirtualMachineFragment;

    invoke-direct {v0}, Lcom/pacman/performance/fragments/VirtualMachineFragment;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->mVirtualMachineFragment:Lcom/pacman/performance/fragments/VirtualMachineFragment;

    .line 64
    new-instance v0, Lcom/pacman/performance/utils/CommandControl;

    invoke-direct {v0}, Lcom/pacman/performance/utils/CommandControl;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->mCommandControl:Lcom/pacman/performance/utils/CommandControl;

    .line 65
    new-instance v0, Lcom/pacman/performance/utils/Dialog;

    invoke-direct {v0}, Lcom/pacman/performance/utils/Dialog;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->mDialog:Lcom/pacman/performance/utils/Dialog;

    .line 66
    new-instance v0, Lcom/pacman/performance/utils/Utils;

    invoke-direct {v0}, Lcom/pacman/performance/utils/Utils;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->mUtils:Lcom/pacman/performance/utils/Utils;

    .line 68
    new-instance v0, Lcom/pacman/performance/helpers/CPUHelper;

    invoke-direct {v0}, Lcom/pacman/performance/helpers/CPUHelper;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->cpuHelper:Lcom/pacman/performance/helpers/CPUHelper;

    .line 69
    new-instance v0, Lcom/pacman/performance/helpers/CPUVoltageHelper;

    invoke-direct {v0}, Lcom/pacman/performance/helpers/CPUVoltageHelper;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->cpuVoltageHelper:Lcom/pacman/performance/helpers/CPUVoltageHelper;

    .line 70
    new-instance v0, Lcom/pacman/performance/helpers/GPUHelper;

    invoke-direct {v0}, Lcom/pacman/performance/helpers/GPUHelper;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->gpuHelper:Lcom/pacman/performance/helpers/GPUHelper;

    .line 71
    new-instance v0, Lcom/pacman/performance/helpers/ScreenHelper;

    invoke-direct {v0}, Lcom/pacman/performance/helpers/ScreenHelper;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->screenHelper:Lcom/pacman/performance/helpers/ScreenHelper;

    .line 72
    new-instance v0, Lcom/pacman/performance/helpers/IOHelper;

    invoke-direct {v0}, Lcom/pacman/performance/helpers/IOHelper;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->ioHelper:Lcom/pacman/performance/helpers/IOHelper;

    .line 73
    new-instance v0, Lcom/pacman/performance/helpers/KernelSamepageMergingHelper;

    invoke-direct {v0}, Lcom/pacman/performance/helpers/KernelSamepageMergingHelper;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->kernelsamepagemergingHelper:Lcom/pacman/performance/helpers/KernelSamepageMergingHelper;

    .line 74
    new-instance v0, Lcom/pacman/performance/helpers/LowMemoryKillerHelper;

    invoke-direct {v0}, Lcom/pacman/performance/helpers/LowMemoryKillerHelper;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->lowmemorykillerHelper:Lcom/pacman/performance/helpers/LowMemoryKillerHelper;

    .line 75
    new-instance v0, Lcom/pacman/performance/helpers/RootHelper;

    invoke-direct {v0}, Lcom/pacman/performance/helpers/RootHelper;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->rootHelper:Lcom/pacman/performance/helpers/RootHelper;

    .line 76
    new-instance v0, Lcom/pacman/performance/helpers/VirtualMachineHelper;

    invoke-direct {v0}, Lcom/pacman/performance/helpers/VirtualMachineHelper;-><init>()V

    sput-object v0, Lcom/pacman/performance/utils/Constants;->virtualmachineHelper:Lcom/pacman/performance/helpers/VirtualMachineHelper;

    .line 122
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/sys/devices/platform/kgsl-2d0.0/kgsl/kgsl-2d0/gpuclk"

    aput-object v1, v0, v3

    sput-object v0, Lcom/pacman/performance/utils/Constants;->GPU_2D_CUR_FREQ_ARRAY:[Ljava/lang/String;

    .line 124
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/sys/devices/platform/kgsl-2d0.0/kgsl/kgsl-2d0/max_gpuclk"

    aput-object v1, v0, v3

    sput-object v0, Lcom/pacman/performance/utils/Constants;->GPU_2D_MAX_FREQ_ARRAY:[Ljava/lang/String;

    .line 126
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/sys/devices/platform/kgsl-2d0.0/kgsl/kgsl-2d0/gpu_available_frequencies"

    aput-object v1, v0, v3

    sput-object v0, Lcom/pacman/performance/utils/Constants;->GPU_2D_AVAILABLE_FREQS_ARRAY:[Ljava/lang/String;

    .line 128
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/sys/devices/platform/kgsl-2d0.0/kgsl/kgsl-2d0/pwrscale/trustzone/governor"

    aput-object v1, v0, v3

    sput-object v0, Lcom/pacman/performance/utils/Constants;->GPU_2D_SCALING_GOVERNOR_ARRAY:[Ljava/lang/String;

    .line 130
    new-array v0, v5, [Ljava/lang/String;

    .line 131
    const-string v1, "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/gpuclk"

    aput-object v1, v0, v3

    const-string v1, "/sys/devices/fdb00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/devfreq/cur_freq"

    aput-object v1, v0, v4

    .line 130
    sput-object v0, Lcom/pacman/performance/utils/Constants;->GPU_3D_CUR_FREQ_ARRAY:[Ljava/lang/String;

    .line 133
    new-array v0, v5, [Ljava/lang/String;

    .line 134
    const-string v1, "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/max_gpuclk"

    aput-object v1, v0, v3

    const-string v1, "/sys/devices/fdb00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/max_gpuclk"

    aput-object v1, v0, v4

    .line 133
    sput-object v0, Lcom/pacman/performance/utils/Constants;->GPU_3D_MAX_FREQ_ARRAY:[Ljava/lang/String;

    .line 136
    new-array v0, v5, [Ljava/lang/String;

    .line 137
    const-string v1, "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/gpu_available_frequencies"

    aput-object v1, v0, v3

    const-string v1, "/sys/devices/fdb00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/gpu_available_frequencies"

    aput-object v1, v0, v4

    .line 136
    sput-object v0, Lcom/pacman/performance/utils/Constants;->GPU_3D_AVAILABLE_FREQS_ARRAY:[Ljava/lang/String;

    .line 139
    new-array v0, v5, [Ljava/lang/String;

    .line 140
    const-string v1, "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/pwrscale/trustzone/governor"

    aput-object v1, v0, v3

    .line 141
    const-string v1, "/sys/devices/fdb00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/devfreq/governor"

    aput-object v1, v0, v4

    .line 139
    sput-object v0, Lcom/pacman/performance/utils/Constants;->GPU_3D_SCALING_GOVERNOR_ARRAY:[Ljava/lang/String;

    .line 143
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/sys/devices/fdb00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/devfreq/available_governors"

    aput-object v1, v0, v3

    sput-object v0, Lcom/pacman/performance/utils/Constants;->GPU_3D_AVAILABLE_GOVERNORS_ARRAY:[Ljava/lang/String;

    .line 145
    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    sget-object v1, Lcom/pacman/performance/utils/Constants;->GPU_2D_CUR_FREQ_ARRAY:[Ljava/lang/String;

    aput-object v1, v0, v3

    .line 146
    sget-object v1, Lcom/pacman/performance/utils/Constants;->GPU_2D_MAX_FREQ_ARRAY:[Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pacman/performance/utils/Constants;->GPU_2D_AVAILABLE_FREQS_ARRAY:[Ljava/lang/String;

    aput-object v1, v0, v5

    .line 147
    sget-object v1, Lcom/pacman/performance/utils/Constants;->GPU_2D_SCALING_GOVERNOR_ARRAY:[Ljava/lang/String;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pacman/performance/utils/Constants;->GPU_3D_CUR_FREQ_ARRAY:[Ljava/lang/String;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 148
    sget-object v2, Lcom/pacman/performance/utils/Constants;->GPU_3D_MAX_FREQ_ARRAY:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pacman/performance/utils/Constants;->GPU_3D_AVAILABLE_FREQS_ARRAY:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 149
    sget-object v2, Lcom/pacman/performance/utils/Constants;->GPU_3D_SCALING_GOVERNOR_ARRAY:[Ljava/lang/String;

    aput-object v2, v0, v1

    .line 145
    sput-object v0, Lcom/pacman/performance/utils/Constants;->GPU_ARRAY:[[Ljava/lang/String;

    .line 158
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "/sys/devices/platform/kcal_ctrl.0/kcal"

    aput-object v1, v0, v3

    .line 159
    const-string v1, "/sys/devices/platform/DIAG0.0/power_rail"

    aput-object v1, v0, v4

    .line 158
    sput-object v0, Lcom/pacman/performance/utils/Constants;->SCREEN_KCAL_ARRAY:[Ljava/lang/String;

    .line 161
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "/sys/devices/platform/kcal_ctrl.0/kcal_ctrl"

    aput-object v1, v0, v3

    .line 162
    const-string v1, "/sys/devices/platform/DIAG0.0/power_rail_ctrl"

    aput-object v1, v0, v4

    .line 161
    sput-object v0, Lcom/pacman/performance/utils/Constants;->SCREEN_KCAL_CTRL_ARRAY:[Ljava/lang/String;

    .line 164
    new-array v0, v5, [[Ljava/lang/String;

    sget-object v1, Lcom/pacman/performance/utils/Constants;->SCREEN_KCAL_ARRAY:[Ljava/lang/String;

    aput-object v1, v0, v3

    .line 165
    sget-object v1, Lcom/pacman/performance/utils/Constants;->SCREEN_KCAL_CTRL_ARRAY:[Ljava/lang/String;

    aput-object v1, v0, v4

    .line 164
    sput-object v0, Lcom/pacman/performance/utils/Constants;->SCREEN_ARRAY:[[Ljava/lang/String;

    .line 187
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/sys/kernel/mm/ksm/full_scans"

    aput-object v1, v0, v3

    .line 188
    const-string v1, "/sys/kernel/mm/ksm/pages_shared"

    aput-object v1, v0, v4

    const-string v1, "/sys/kernel/mm/ksm/pages_sharing"

    aput-object v1, v0, v5

    const-string v1, "/sys/kernel/mm/ksm/pages_unshared"

    aput-object v1, v0, v6

    .line 189
    const-string v1, "/sys/kernel/mm/ksm/pages_volatile"

    aput-object v1, v0, v7

    .line 187
    sput-object v0, Lcom/pacman/performance/utils/Constants;->KSM_INFOS:[Ljava/lang/String;

    .line 197
    return-void
.end method
