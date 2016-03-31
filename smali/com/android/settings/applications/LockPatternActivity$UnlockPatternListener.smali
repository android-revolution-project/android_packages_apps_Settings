.class Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/LockPatternActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/LockPatternActivity;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/LockPatternActivity;Lcom/android/settings/applications/LockPatternActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/applications/LockPatternActivity;
    .param p2, "x1"    # Lcom/android/settings/applications/LockPatternActivity$1;

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;-><init>(Lcom/android/settings/applications/LockPatternActivity;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const v2, 0x7f09079e

    const/4 v4, 0x4

    const-wide/16 v6, 0x7d0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 257
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v0, :cond_4

    .line 258
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907a3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iput-boolean v5, v0, Lcom/android/settings/applications/LockPatternActivity;->mRetryPattern:Z

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mConfirming:Z

    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/LockPatternActivity;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 284
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iput-boolean v5, v0, Lcom/android/settings/applications/LockPatternActivity;->mRetryPattern:Z

    .line 293
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/LockPatternActivity;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    .line 295
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 301
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/LockPatternActivity;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 302
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LockPatternActivity;->setResult(I)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v0}, Lcom/android/settings/applications/LockPatternActivity;->finish()V

    goto/16 :goto_0

    .line 305
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget v1, v0, Lcom/android/settings/applications/LockPatternActivity;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/settings/applications/LockPatternActivity;->mRetry:I

    .line 306
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 310
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 312
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mRetry:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 314
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v0}, Lcom/android/settings/applications/LockPatternActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 318
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    # invokes: Lcom/android/settings/applications/LockPatternActivity;->switchToAccount()V
    invoke-static {v0}, Lcom/android/settings/applications/LockPatternActivity;->access$200(Lcom/android/settings/applications/LockPatternActivity;)V

    goto/16 :goto_0
.end method

.method public onPatternStart()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 247
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 250
    return-void
.end method
