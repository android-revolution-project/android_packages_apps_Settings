.class Lcom/android/settings/pac/InitD$3;
.super Ljava/lang/Object;
.source "InitD.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


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
    .line 125
    iput-object p1, p0, Lcom/android/settings/pac/InitD$3;->this$0:Lcom/android/settings/pac/InitD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v3, p0, Lcom/android/settings/pac/InitD$3;->this$0:Lcom/android/settings/pac/InitD;

    iget-object v3, v3, Lcom/android/settings/pac/InitD;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 131
    .local v1, "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v2, 0x0

    .line 132
    .local v2, "value":Ljava/lang/String;
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, "obj":Ljava/lang/Object;
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 134
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "true"

    .line 140
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 141
    iget-object v3, p0, Lcom/android/settings/pac/InitD$3;->this$0:Lcom/android/settings/pac/InitD;

    # invokes: Lcom/android/settings/pac/InitD;->updateShellVariable(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, p2, v2}, Lcom/android/settings/pac/InitD;->access$700(Lcom/android/settings/pac/InitD;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_1
    return-void

    .line 134
    :cond_2
    const-string v2, "false"

    goto :goto_0

    .line 135
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object v2, v0

    .line 136
    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_4
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 138
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
