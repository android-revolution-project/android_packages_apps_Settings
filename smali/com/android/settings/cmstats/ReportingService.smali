.class public Lcom/android/settings/cmstats/ReportingService;
.super Landroid/app/Service;
.source "ReportingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cmstats/ReportingService$1;,
        Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;
    }
.end annotation


# instance fields
.field private mTask:Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/cmstats/ReportingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cmstats/ReportingService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/cmstats/ReportingService;->createMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private createMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/google/analytics/tracking/android/MapBuilder;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 58
    const-string v0, "CMStats"

    const-string v1, "User has opted in -- reporting."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/android/settings/cmstats/ReportingService;->mTask:Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cmstats/ReportingService;->mTask:Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;

    invoke-virtual {v0}, Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 61
    :cond_0
    new-instance v0, Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;-><init>(Lcom/android/settings/cmstats/ReportingService;Lcom/android/settings/cmstats/ReportingService$1;)V

    iput-object v0, p0, Lcom/android/settings/cmstats/ReportingService;->mTask:Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;

    .line 62
    iget-object v0, p0, Lcom/android/settings/cmstats/ReportingService;->mTask:Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    :cond_1
    const/4 v0, 0x3

    return v0
.end method
