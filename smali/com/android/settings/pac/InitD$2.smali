.class Lcom/android/settings/pac/InitD$2;
.super Landroid/os/Handler;
.source "InitD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/pac/InitD;
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
    .line 104
    iput-object p1, p0, Lcom/android/settings/pac/InitD$2;->this$0:Lcom/android/settings/pac/InitD;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/pac/InitD$2;->this$0:Lcom/android/settings/pac/InitD;

    # getter for: Lcom/android/settings/pac/InitD;->mPbarDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/pac/InitD;->access$300(Lcom/android/settings/pac/InitD;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 110
    iget-object v0, p0, Lcom/android/settings/pac/InitD$2;->this$0:Lcom/android/settings/pac/InitD;

    # invokes: Lcom/android/settings/pac/InitD;->isInitdSetup()Z
    invoke-static {v0}, Lcom/android/settings/pac/InitD;->access$400(Lcom/android/settings/pac/InitD;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/pac/InitD$2;->this$0:Lcom/android/settings/pac/InitD;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/pac/InitD;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/pac/InitD;->access$500(Lcom/android/settings/pac/InitD;I)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/settings/pac/InitD$2;->this$0:Lcom/android/settings/pac/InitD;

    # invokes: Lcom/android/settings/pac/InitD;->saveAllPrefs()Z
    invoke-static {v0}, Lcom/android/settings/pac/InitD;->access$600(Lcom/android/settings/pac/InitD;)Z

    .line 116
    iget-object v0, p0, Lcom/android/settings/pac/InitD$2;->this$0:Lcom/android/settings/pac/InitD;

    const v1, 0x7f060069

    invoke-virtual {v0, v1}, Lcom/android/settings/pac/InitD;->addPreferencesFromResource(I)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/pac/InitD$2;->this$0:Lcom/android/settings/pac/InitD;

    iget-object v0, v0, Lcom/android/settings/pac/InitD;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/pac/InitD$2;->this$0:Lcom/android/settings/pac/InitD;

    iget-object v1, v1, Lcom/android/settings/pac/InitD;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
