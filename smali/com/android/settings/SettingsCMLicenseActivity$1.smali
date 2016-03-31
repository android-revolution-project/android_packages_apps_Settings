.class Lcom/android/settings/SettingsCMLicenseActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SettingsCMLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsCMLicenseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsCMLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsCMLicenseActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/SettingsCMLicenseActivity$1;->this$0:Lcom/android/settings/SettingsCMLicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity$1;->this$0:Lcom/android/settings/SettingsCMLicenseActivity;

    # getter for: Lcom/android/settings/SettingsCMLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/SettingsCMLicenseActivity;->access$000(Lcom/android/settings/SettingsCMLicenseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 86
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity$1;->this$0:Lcom/android/settings/SettingsCMLicenseActivity;

    # getter for: Lcom/android/settings/SettingsCMLicenseActivity;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/SettingsCMLicenseActivity;->access$100(Lcom/android/settings/SettingsCMLicenseActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 87
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity$1;->this$0:Lcom/android/settings/SettingsCMLicenseActivity;

    # invokes: Lcom/android/settings/SettingsCMLicenseActivity;->showErrorAndFinish(Ljava/lang/String;)V
    invoke-static {v0, p4}, Lcom/android/settings/SettingsCMLicenseActivity;->access$200(Lcom/android/settings/SettingsCMLicenseActivity;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method
