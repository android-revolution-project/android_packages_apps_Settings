.class Lcom/android/settings/CryptKeeper$DecryptTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p2, "x1"    # Lcom/android/settings/CryptKeeper$1;

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method

.method private hide(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v1, p1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 173
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 179
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$200(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 181
    .local v1, "service":Landroid/os/storage/IMountService;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 184
    :goto_0
    return-object v2

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CryptKeeper"

    const-string v3, "Error while decrypting..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .prologue
    .line 190
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$300(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 195
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$300(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    :cond_0
    const v1, 0x7f100061

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    .line 198
    const v1, 0x7f100062

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    .line 199
    const v1, 0x7f100052

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    .line 200
    const v1, 0x7f100022

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    .line 201
    const v1, 0x7f100070

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    .line 202
    const v1, 0x7f100060

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    .line 203
    const v1, 0x7f100063

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    .line 218
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_2

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    const-string v1, "android.intent.extra.REASON"

    const-string v2, "CryptKeeper.MAX_FAILED_ATTEMPTS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v1, v0}, Lcom/android/settings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 210
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 212
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    const v2, 0x7f040030

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 213
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v2, 0x1

    # invokes: Lcom/android/settings/CryptKeeper;->showFactoryReset(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/CryptKeeper;->access$400(Lcom/android/settings/CryptKeeper;Z)V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V
    invoke-static {v1, p1}, Lcom/android/settings/CryptKeeper;->access$000(Lcom/android/settings/CryptKeeper;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 169
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
