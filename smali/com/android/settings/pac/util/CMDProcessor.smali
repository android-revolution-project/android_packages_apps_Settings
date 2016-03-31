.class public Lcom/android/settings/pac/util/CMDProcessor;
.super Ljava/lang/Object;
.source "CMDProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/pac/util/CMDProcessor$SH;,
        Lcom/android/settings/pac/util/CMDProcessor$CommandResult;
    }
.end annotation


# static fields
.field private static final LD_LIBRARY_PATH:Ljava/lang/String;


# instance fields
.field public sh:Lcom/android/settings/pac/util/CMDProcessor$SH;

.field public su:Lcom/android/settings/pac/util/CMDProcessor$SH;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "LD_LIBRARY_PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/pac/util/CMDProcessor;->LD_LIBRARY_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/android/settings/pac/util/CMDProcessor$SH;

    const-string v1, "sh"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/pac/util/CMDProcessor$SH;-><init>(Lcom/android/settings/pac/util/CMDProcessor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/pac/util/CMDProcessor;->sh:Lcom/android/settings/pac/util/CMDProcessor$SH;

    .line 19
    new-instance v0, Lcom/android/settings/pac/util/CMDProcessor$SH;

    const-string v1, "su"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/pac/util/CMDProcessor$SH;-><init>(Lcom/android/settings/pac/util/CMDProcessor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/pac/util/CMDProcessor;->su:Lcom/android/settings/pac/util/CMDProcessor$SH;

    .line 20
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/android/settings/pac/util/CMDProcessor;->LD_LIBRARY_PATH:Ljava/lang/String;

    return-object v0
.end method
