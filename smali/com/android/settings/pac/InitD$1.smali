.class Lcom/android/settings/pac/InitD$1;
.super Ljava/lang/Thread;
.source "InitD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/pac/InitD;->loadValues()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/pac/InitD;


# direct methods
.method constructor <init>(Lcom/android/settings/pac/InitD;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/pac/InitD$1;->this$0:Lcom/android/settings/pac/InitD;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 97
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 98
    iget-object v0, p0, Lcom/android/settings/pac/InitD$1;->this$0:Lcom/android/settings/pac/InitD;

    iget-object v1, p0, Lcom/android/settings/pac/InitD$1;->this$0:Lcom/android/settings/pac/InitD;

    # invokes: Lcom/android/settings/pac/InitD;->getShellVariables()Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/settings/pac/InitD;->access$100(Lcom/android/settings/pac/InitD;)Ljava/util/HashMap;

    move-result-object v1

    # setter for: Lcom/android/settings/pac/InitD;->mShellVariables:Ljava/util/HashMap;
    invoke-static {v0, v1}, Lcom/android/settings/pac/InitD;->access$002(Lcom/android/settings/pac/InitD;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 99
    iget-object v0, p0, Lcom/android/settings/pac/InitD$1;->this$0:Lcom/android/settings/pac/InitD;

    # getter for: Lcom/android/settings/pac/InitD;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/pac/InitD;->access$200(Lcom/android/settings/pac/InitD;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 100
    return-void
.end method
