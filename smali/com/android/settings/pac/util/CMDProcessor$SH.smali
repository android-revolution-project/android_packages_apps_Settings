.class public Lcom/android/settings/pac/util/CMDProcessor$SH;
.super Ljava/lang/Object;
.source "CMDProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/pac/util/CMDProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SH"
.end annotation


# instance fields
.field private SHELL:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/pac/util/CMDProcessor;


# direct methods
.method public constructor <init>(Lcom/android/settings/pac/util/CMDProcessor;Ljava/lang/String;)V
    .locals 1
    .param p2, "SHELL_in"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/pac/util/CMDProcessor$SH;->this$0:Lcom/android/settings/pac/util/CMDProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "sh"

    iput-object v0, p0, Lcom/android/settings/pac/util/CMDProcessor$SH;->SHELL:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/android/settings/pac/util/CMDProcessor$SH;->SHELL:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private getStreamLines(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 59
    const/4 v4, 0x0

    .line 60
    .local v4, "out":Ljava/lang/String;
    const/4 v0, 0x0

    .line 61
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 64
    .local v2, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v5

    if-lez v5, :cond_2

    .line 65
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .local v1, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v5

    if-lez v5, :cond_1

    .line 67
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 72
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .local v3, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v5, "CMD Processor"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_2
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    :cond_0
    return-object v4

    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    :cond_1
    move-object v0, v1

    .line 70
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 71
    :catch_1
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public run(Ljava/lang/String;)Ljava/lang/Process;
    .locals 8
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "process":Ljava/lang/Process;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 84
    .local v2, "runtime":Ljava/lang/Runtime;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/pac/util/CMDProcessor$SH;->SHELL:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 85
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 89
    .local v4, "toProcess":Ljava/io/DataOutputStream;
    const-string v3, ""

    .line 90
    .local v3, "setenv":Ljava/lang/String;
    const-string v5, "su"

    iget-object v6, p0, Lcom/android/settings/pac/util/CMDProcessor$SH;->SHELL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LD_LIBRARY_PATH="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/settings/pac/util/CMDProcessor;->LD_LIBRARY_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/pac/util/CMDProcessor;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "exec "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v3    # "setenv":Ljava/lang/String;
    .end local v4    # "toProcess":Ljava/io/DataOutputStream;
    :goto_0
    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "CMD Processor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while trying to run: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public run([Ljava/lang/String;)Ljava/lang/Process;
    .locals 11
    .param p1, "cmds"    # [Ljava/lang/String;

    .prologue
    .line 123
    const/4 v5, 0x0

    .line 125
    .local v5, "process":Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/pac/util/CMDProcessor$SH;->SHELL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 126
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 130
    .local v7, "toProcess":Ljava/io/DataOutputStream;
    const-string v6, ""

    .line 131
    .local v6, "setenv":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/pac/util/CMDProcessor$SH;->SHELL:Ljava/lang/String;

    const-string v9, "su"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LD_LIBRARY_PATH="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/android/settings/pac/util/CMDProcessor;->LD_LIBRARY_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/pac/util/CMDProcessor;->access$000()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 134
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 135
    .local v1, "cmd":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "cmd":Ljava/lang/String;
    :cond_1
    const-string v8, "exit\n"

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "setenv":Ljava/lang/String;
    .end local v7    # "toProcess":Ljava/io/DataOutputStream;
    :goto_1
    return-object v5

    .line 139
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "CMD Processor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while trying to run cmds"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public runWaitFor(Ljava/lang/String;)Lcom/android/settings/pac/util/CMDProcessor$CommandResult;
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings/pac/util/CMDProcessor$SH;->run(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 105
    .local v2, "process":Ljava/lang/Process;
    const/4 v1, 0x0

    .line 106
    .local v1, "exit_value":Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 107
    .local v4, "stdout":Ljava/lang/String;
    const/4 v3, 0x0

    .line 108
    .local v3, "stderr":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 110
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 111
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/pac/util/CMDProcessor$SH;->getStreamLines(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/pac/util/CMDProcessor$SH;->getStreamLines(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 119
    :cond_0
    :goto_0
    new-instance v5, Lcom/android/settings/pac/util/CMDProcessor$CommandResult;

    iget-object v6, p0, Lcom/android/settings/pac/util/CMDProcessor$SH;->this$0:Lcom/android/settings/pac/util/CMDProcessor;

    invoke-direct {v5, v6, v1, v4, v3}, Lcom/android/settings/pac/util/CMDProcessor$CommandResult;-><init>(Lcom/android/settings/pac/util/CMDProcessor;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "CMD Processor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runWaitFor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "CMD Processor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runWaitFor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public runWaitFor([Ljava/lang/String;)Lcom/android/settings/pac/util/CMDProcessor$CommandResult;
    .locals 8
    .param p1, "cmds"    # [Ljava/lang/String;

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/android/settings/pac/util/CMDProcessor$SH;->run([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 149
    .local v2, "process":Ljava/lang/Process;
    const/4 v1, 0x0

    .line 150
    .local v1, "exit_value":Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 151
    .local v4, "stdout":Ljava/lang/String;
    const/4 v3, 0x0

    .line 152
    .local v3, "stderr":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 154
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 155
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/pac/util/CMDProcessor$SH;->getStreamLines(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/pac/util/CMDProcessor$SH;->getStreamLines(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 163
    :cond_0
    :goto_0
    new-instance v5, Lcom/android/settings/pac/util/CMDProcessor$CommandResult;

    iget-object v6, p0, Lcom/android/settings/pac/util/CMDProcessor$SH;->this$0:Lcom/android/settings/pac/util/CMDProcessor;

    invoke-direct {v5, v6, v1, v4, v3}, Lcom/android/settings/pac/util/CMDProcessor$CommandResult;-><init>(Lcom/android/settings/pac/util/CMDProcessor;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "CMD Processor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runWaitFor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "CMD Processor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runWaitFor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
