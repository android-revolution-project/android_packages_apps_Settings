.class Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;
.super Ljava/lang/Object;
.source "ShortcutPickHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupInfo"
.end annotation


# instance fields
.field info:Landroid/content/pm/PackageInfo;

.field label:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p2, "l"    # Ljava/lang/String;
    .param p3, "p"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;->this$1:Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p2, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;->label:Ljava/lang/String;

    .line 201
    iput-object p3, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;->info:Landroid/content/pm/PackageInfo;

    .line 202
    return-void
.end method
