.class public Lcom/android/settings/SettingsCMLicenseActivity;
.super Landroid/app/Activity;
.source "SettingsCMLicenseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mSpinnerDlg:Landroid/app/ProgressDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsCMLicenseActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsCMLicenseActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsCMLicenseActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsCMLicenseActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsCMLicenseActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsCMLicenseActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsCMLicenseActivity;->showErrorAndFinish(Ljava/lang/String;)V

    return-void
.end method

.method private showErrorAndFinish(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 103
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_3

    .line 110
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0902a6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    .line 121
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/SettingsCMLicenseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902a7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 124
    return-void

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 142
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/settings/SettingsCMLicenseActivity;->finish()V

    .line 154
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/SettingsCMLicenseActivity;->finish()V

    .line 150
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f0902a6

    const/4 v9, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsCMLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 52
    .local v6, "title":Ljava/lang/CharSequence;
    const v8, 0x7f090788

    invoke-virtual {p0, v8}, Lcom/android/settings/SettingsCMLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 54
    .local v4, "msg":Ljava/lang/CharSequence;
    const/4 v8, 0x1

    invoke-static {p0, v6, v4, v8, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v5

    .line 55
    .local v5, "pd":Landroid/app/ProgressDialog;
    invoke-virtual {v5, v9}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 56
    iput-object v5, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 58
    const-string v8, "ro.cmlegal.url"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, "userCMLicenseUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsCMLicenseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 61
    .local v1, "configuration":Landroid/content/res/Configuration;
    iget-object v8, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "language":Ljava/lang/String;
    iget-object v8, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "country":Ljava/lang/String;
    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 68
    new-instance v8, Landroid/webkit/WebView;

    invoke-direct {v8, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 70
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 72
    iget-object v8, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 73
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mDialog:Landroid/app/AlertDialog;

    .line 77
    if-nez p1, :cond_0

    .line 78
    iget-object v8, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 82
    :goto_0
    iget-object v8, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v9, Lcom/android/settings/SettingsCMLicenseActivity$1;

    invoke-direct {v9, p0}, Lcom/android/settings/SettingsCMLicenseActivity$1;-><init>(Lcom/android/settings/SettingsCMLicenseActivity;)V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 100
    return-void

    .line 80
    :cond_0
    iget-object v8, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 130
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    .line 134
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 159
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 160
    return-void
.end method
