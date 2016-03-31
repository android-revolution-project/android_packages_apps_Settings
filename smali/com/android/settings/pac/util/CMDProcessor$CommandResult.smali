.class public Lcom/android/settings/pac/util/CMDProcessor$CommandResult;
.super Ljava/lang/Object;
.source "CMDProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/pac/util/CMDProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommandResult"
.end annotation


# instance fields
.field public final exit_value:Ljava/lang/Integer;

.field public final stderr:Ljava/lang/String;

.field public final stdout:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/pac/util/CMDProcessor;


# direct methods
.method constructor <init>(Lcom/android/settings/pac/util/CMDProcessor;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "exit_value_in"    # Ljava/lang/Integer;
    .param p3, "stdout_in"    # Ljava/lang/String;
    .param p4, "stderr_in"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings/pac/util/CMDProcessor$CommandResult;->this$0:Lcom/android/settings/pac/util/CMDProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/android/settings/pac/util/CMDProcessor$CommandResult;->exit_value:Ljava/lang/Integer;

    .line 42
    iput-object p3, p0, Lcom/android/settings/pac/util/CMDProcessor$CommandResult;->stdout:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/android/settings/pac/util/CMDProcessor$CommandResult;->stderr:Ljava/lang/String;

    .line 44
    return-void
.end method
