.class Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;
.super Landroid/os/AsyncTask;
.source "ReportingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cmstats/ReportingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsUploadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cmstats/ReportingService;


# direct methods
.method private constructor <init>(Lcom/android/settings/cmstats/ReportingService;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/cmstats/ReportingService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/cmstats/ReportingService;Lcom/android/settings/cmstats/ReportingService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/cmstats/ReportingService;
    .param p2, "x1"    # Lcom/android/settings/cmstats/ReportingService$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;-><init>(Lcom/android/settings/cmstats/ReportingService;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 71
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/cmstats/ReportingService;

    invoke-virtual {v15}, Lcom/android/settings/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/cmstats/Utilities;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/cmstats/Utilities;->getDevice()Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "deviceName":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/cmstats/Utilities;->getModVersion()Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "deviceVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/cmstats/ReportingService;

    invoke-virtual {v15}, Lcom/android/settings/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/cmstats/Utilities;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "deviceCountry":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/cmstats/ReportingService;

    invoke-virtual {v15}, Lcom/android/settings/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/cmstats/Utilities;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "deviceCarrier":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/cmstats/ReportingService;

    invoke-virtual {v15}, Lcom/android/settings/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/cmstats/Utilities;->getCarrierId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "deviceCarrierId":Ljava/lang/String;
    const-string v15, "CMStats"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SERVICE: Device ID="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v15, "CMStats"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SERVICE: Device Name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v15, "CMStats"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SERVICE: Device Version="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v15, "CMStats"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SERVICE: Country="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v15, "CMStats"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SERVICE: Carrier="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v15, "CMStats"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SERVICE: Carrier ID="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/cmstats/ReportingService;

    invoke-static {v15}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/cmstats/ReportingService;

    move-object/from16 v16, v0

    const v17, 0x7f090002

    invoke-virtual/range {v16 .. v17}, Lcom/android/settings/cmstats/ReportingService;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v14

    .line 88
    .local v14, "tracker":Lcom/google/analytics/tracking/android/Tracker;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/cmstats/ReportingService;

    # invokes: Lcom/android/settings/cmstats/ReportingService;->createMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    invoke-static {v15, v5, v6, v3}, Lcom/android/settings/cmstats/ReportingService;->access$100(Lcom/android/settings/cmstats/ReportingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 93
    const-string v15, "-"

    invoke-virtual {v6, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 94
    .local v12, "parts":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 95
    .local v7, "deviceVersionNoDevice":Ljava/lang/String;
    array-length v15, v12

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 96
    const/4 v15, 0x0

    aget-object v7, v12, v15

    .line 101
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 102
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/cmstats/ReportingService;

    const-string v16, "checkin"

    move-object/from16 v0, v16

    # invokes: Lcom/android/settings/cmstats/ReportingService;->createMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    invoke-static {v15, v0, v5, v7}, Lcom/android/settings/cmstats/ReportingService;->access$100(Lcom/android/settings/cmstats/ReportingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 106
    :cond_1
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 107
    .local v9, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    const-string v15, "https://stats.cyanogenmod.org/submit"

    invoke-direct {v10, v15}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 108
    .local v10, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const/4 v13, 0x0

    .line 111
    .local v13, "success":Z
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    const/4 v15, 0x5

    invoke-direct {v11, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .local v11, "kv":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "device_hash"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "device_name"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "device_version"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "device_country"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "device_carrier"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "device_carrier_id"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v15, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v15, v11}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v10, v15}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 120
    invoke-interface {v9, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    const/4 v13, 0x1

    .line 127
    .end local v11    # "kv":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_1
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    return-object v15

    .line 97
    .end local v9    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v10    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v13    # "success":Z
    :cond_2
    array-length v15, v12

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 98
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    aget-object v16, v12, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    aget-object v16, v12, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 123
    .restart local v9    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v10    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v13    # "success":Z
    :catch_0
    move-exception v8

    .line 124
    .local v8, "e":Ljava/io/IOException;
    const-string v15, "CMStats"

    const-string v16, "Could not upload stats checkin"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/cmstats/ReportingService;

    .line 135
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    invoke-static {v0}, Lcom/android/settings/cmstats/AnonymousStats;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 137
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pref_anonymous_checked_in"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    const-wide/16 v2, 0x0

    .line 146
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .local v2, "interval":J
    :goto_0
    invoke-static {v0, v2, v3}, Lcom/android/settings/cmstats/ReportingServiceManager;->setAlarm(Landroid/content/Context;J)V

    .line 147
    iget-object v4, p0, Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/cmstats/ReportingService;

    invoke-virtual {v4}, Lcom/android/settings/cmstats/ReportingService;->stopSelf()V

    .line 148
    return-void

    .line 143
    .end local v2    # "interval":J
    :cond_0
    const-wide/32 v2, 0xa4cb80

    .restart local v2    # "interval":J
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/cmstats/ReportingService$StatsUploadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
