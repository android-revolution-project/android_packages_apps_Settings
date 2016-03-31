.class public Lcom/android/settings/pac/InitD;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InitD.java"


# static fields
.field private static final KEYS:[Ljava/lang/String;

.field private static sActivity:Lcom/android/settings/pac/InitD;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field protected mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mPbarDialog:Landroid/app/ProgressDialog;

.field protected mPrefs:Landroid/content/SharedPreferences;

.field private mShellVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sysctl"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "setrenice"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "filesystem"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "freemem"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cache"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "permissions"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "kernel"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cron"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sdboost"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ahead"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "battery"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "touch"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "vm"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "net"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sleepers"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "journalism"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sqlite"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "wifisleep"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "iostats"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/pac/InitD;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 104
    new-instance v0, Lcom/android/settings/pac/InitD$2;

    invoke-direct {v0, p0}, Lcom/android/settings/pac/InitD$2;-><init>(Lcom/android/settings/pac/InitD;)V

    iput-object v0, p0, Lcom/android/settings/pac/InitD;->mHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/android/settings/pac/InitD$3;

    invoke-direct {v0, p0}, Lcom/android/settings/pac/InitD$3;-><init>(Lcom/android/settings/pac/InitD;)V

    iput-object v0, p0, Lcom/android/settings/pac/InitD;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/pac/InitD;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/pac/InitD;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/settings/pac/InitD;->mShellVariables:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/pac/InitD;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/pac/InitD;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/pac/InitD;->getShellVariables()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/pac/InitD;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/pac/InitD;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/pac/InitD;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/pac/InitD;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/pac/InitD;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/pac/InitD;->mPbarDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/pac/InitD;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/pac/InitD;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/pac/InitD;->isInitdSetup()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/pac/InitD;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/pac/InitD;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/settings/pac/InitD;->showDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/pac/InitD;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/pac/InitD;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/pac/InitD;->saveAllPrefs()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/pac/InitD;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/pac/InitD;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/pac/InitD;->updateShellVariable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getShellVariables()Ljava/util/HashMap;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    const/16 v17, 0x0

    .line 210
    .local v17, "variables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v18, Lcom/android/settings/pac/util/CMDProcessor;

    invoke-direct/range {v18 .. v18}, Lcom/android/settings/pac/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v18

    iget-object v14, v0, Lcom/android/settings/pac/util/CMDProcessor;->sh:Lcom/android/settings/pac/util/CMDProcessor$SH;

    .line 212
    .local v14, "sh":Lcom/android/settings/pac/util/CMDProcessor$SH;
    sget-object v18, Lcom/android/settings/pac/InitD;->KEYS:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v11, v0

    .line 213
    .local v11, "numOfKeys":I
    add-int/lit8 v18, v11, 0x1

    move/from16 v0, v18

    new-array v4, v0, [Ljava/lang/String;

    .line 217
    .local v4, "cmds":[Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, ". /data/local/init.d.cfg"

    aput-object v19, v4, v18

    .line 218
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_0

    .line 219
    add-int/lit8 v18, v6, 0x1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "echo $"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/settings/pac/InitD;->KEYS:[Ljava/lang/String;

    aget-object v20, v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v4, v18

    .line 218
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v14, v4}, Lcom/android/settings/pac/util/CMDProcessor$SH;->runWaitFor([Ljava/lang/String;)Lcom/android/settings/pac/util/CMDProcessor$CommandResult;

    move-result-object v13

    .line 223
    .local v13, "result":Lcom/android/settings/pac/util/CMDProcessor$CommandResult;
    iget-object v0, v13, Lcom/android/settings/pac/util/CMDProcessor$CommandResult;->stdout:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "[\r\n]+"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 224
    .local v16, "values":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v12, v0

    .line 225
    .local v12, "numOfValues":I
    if-ne v12, v11, :cond_1

    .line 226
    new-instance v17, Ljava/util/HashMap;

    .end local v17    # "variables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 227
    .restart local v17    # "variables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v11, :cond_1

    .line 228
    sget-object v18, Lcom/android/settings/pac/InitD;->KEYS:[Ljava/lang/String;

    aget-object v18, v18, v6

    aget-object v19, v16, v6

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 232
    :cond_1
    if-nez v17, :cond_3

    .line 233
    new-instance v17, Ljava/util/HashMap;

    .end local v17    # "variables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 235
    .restart local v17    # "variables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    const-string v19, "/data/local/init.d.cfg"

    invoke-direct/range {v18 .. v19}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x100

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 236
    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 237
    .local v9, "line":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 238
    const-string v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 239
    const-string v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 240
    .local v15, "value":Ljava/lang/String;
    sget-object v2, Lcom/android/settings/pac/InitD;->KEYS:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_3
    if-ge v7, v8, :cond_2

    aget-object v10, v2, v7

    .line 241
    .local v10, "name":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 242
    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 249
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 250
    .local v5, "e":Ljava/io/FileNotFoundException;
    const-string v18, "InitD"

    const-string v19, "/data/local/init.d.cfg does not exist"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/16 v17, 0x0

    .line 257
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_4
    return-object v17

    .line 240
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v15    # "value":Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 248
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 252
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v9    # "line":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 253
    .local v5, "e":Ljava/io/IOException;
    const-string v18, "InitD"

    const-string v19, "Error reading /data/local/init.d.cfg"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/16 v17, 0x0

    goto :goto_4
.end method

.method private isInitdSetup()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 148
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/init.d.cfg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    const-string v1, "InitD"

    const-string v2, "/data/local/init.d.cfg does not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return v0

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/settings/pac/InitD;->mShellVariables:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 152
    const-string v1, "InitD"

    const-string v2, "Failed getting shell variables!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/init.d"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    const-string v1, "InitD"

    const-string v2, "/system/etc/init.d does not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadValues()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/pac/InitD;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/pac/InitD;->mPbarDialog:Landroid/app/ProgressDialog;

    .line 92
    iget-object v0, p0, Lcom/android/settings/pac/InitD;->mPbarDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading values ..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/pac/InitD;->mPbarDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 94
    new-instance v0, Lcom/android/settings/pac/InitD$1;

    invoke-direct {v0, p0}, Lcom/android/settings/pac/InitD$1;-><init>(Lcom/android/settings/pac/InitD;)V

    invoke-virtual {v0}, Lcom/android/settings/pac/InitD$1;->start()V

    .line 102
    return-void
.end method

.method private saveAllPrefs()Z
    .locals 6

    .prologue
    .line 182
    iget-object v5, p0, Lcom/android/settings/pac/InitD;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 183
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v5, Lcom/android/settings/pac/InitD;->KEYS:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 184
    sget-object v5, Lcom/android/settings/pac/InitD;->KEYS:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 185
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/pac/InitD;->mShellVariables:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 186
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 187
    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 188
    .local v2, "isBool":Z
    :goto_1
    if-eqz v2, :cond_3

    .line 189
    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 183
    .end local v2    # "isBool":Z
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 191
    .restart local v2    # "isBool":Z
    :cond_3
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 195
    .end local v2    # "isBool":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    return v5
.end method

.method private updateShellVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 200
    new-instance v2, Lcom/android/settings/pac/util/CMDProcessor;

    invoke-direct {v2}, Lcom/android/settings/pac/util/CMDProcessor;-><init>()V

    iget-object v1, v2, Lcom/android/settings/pac/util/CMDProcessor;->su:Lcom/android/settings/pac/util/CMDProcessor$SH;

    .line 202
    .local v1, "shell":Lcom/android/settings/pac/util/CMDProcessor$SH;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "busybox sed -i \'s|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=.*|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/data/local/init.d.cfg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/pac/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/android/settings/pac/util/CMDProcessor$CommandResult;

    move-result-object v0

    .line 203
    .local v0, "CRr":Lcom/android/settings/pac/util/CMDProcessor$CommandResult;
    const-string v2, "InitD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update Value - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/pac/util/CMDProcessor$CommandResult;->exit_value:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/pac/util/CMDProcessor$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/pac/util/CMDProcessor$CommandResult;->stderr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v2, p0, Lcom/android/settings/pac/InitD;->mShellVariables:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    sput-object p0, Lcom/android/settings/pac/InitD;->sActivity:Lcom/android/settings/pac/InitD;

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/pac/InitD;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/pac/InitD;->mPrefs:Landroid/content/SharedPreferences;

    .line 87
    invoke-direct {p0}, Lcom/android/settings/pac/InitD;->loadValues()V

    .line 88
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 164
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/pac/InitD;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090d0e

    invoke-virtual {p0, v1}, Lcom/android/settings/pac/InitD;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090d0f

    invoke-virtual {p0, v1}, Lcom/android/settings/pac/InitD;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090d10

    invoke-virtual {p0, v1}, Lcom/android/settings/pac/InitD;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/pac/InitD$4;

    invoke-direct {v2, p0}, Lcom/android/settings/pac/InitD$4;-><init>(Lcom/android/settings/pac/InitD;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
