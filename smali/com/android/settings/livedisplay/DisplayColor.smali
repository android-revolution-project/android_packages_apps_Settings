.class public Lcom/android/settings/livedisplay/DisplayColor;
.super Landroid/preference/DialogPreference;
.source "DisplayColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/livedisplay/DisplayColor$ColorSeekBar;,
        Lcom/android/settings/livedisplay/DisplayColor$SavedState;
    }
.end annotation


# static fields
.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_VALUE_ID:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentColors:[F

.field private final mOriginalColors:[F

.field private mSeekBars:[Lcom/android/settings/livedisplay/DisplayColor$ColorSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/livedisplay/DisplayColor;->SEEKBAR_VALUE_ID:[I

    return-void

    .line 46
    :array_0
    .array-data 4
        0x7f1000d8
        0x7f1000db
        0x7f1000de
    .end array-data

    .line 52
    :array_1
    .array-data 4
        0x7f1000d7
        0x7f1000da
        0x7f1000dd
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x3

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    sget-object v0, Lcom/android/settings/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/android/settings/livedisplay/DisplayColor$ColorSeekBar;

    iput-object v0, p0, Lcom/android/settings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/settings/livedisplay/DisplayColor$ColorSeekBar;

    .line 60
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    .line 61
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    .line 66
    iput-object p1, p0, Lcom/android/settings/livedisplay/DisplayColor;->mContext:Landroid/content/Context;

    .line 68
    const v0, 0x7f04004e

    invoke-virtual {p0, v0}, Lcom/android/settings/livedisplay/DisplayColor;->setDialogLayoutResource(I)V

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/livedisplay/DisplayColor;)[Lcom/android/settings/livedisplay/DisplayColor$ColorSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/livedisplay/DisplayColor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/settings/livedisplay/DisplayColor$ColorSeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/livedisplay/DisplayColor;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/livedisplay/DisplayColor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/livedisplay/DisplayColor;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/livedisplay/DisplayColor;
    .param p1, "x1"    # [F

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/livedisplay/DisplayColor;->updateColors([F)V

    return-void
.end method

.method private updateColors([F)V
    .locals 4
    .param p1, "colors"    # [F

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings/livedisplay/DisplayColor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_color_adjustment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 219
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 85
    iget-object v7, p0, Lcom/android/settings/livedisplay/DisplayColor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "display_color_adjustment"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "colorAdjustmentTemp":Ljava/lang/String;
    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 90
    .local v0, "colorAdjustment":[Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    array-length v7, v0

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    .line 91
    :cond_0
    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/String;

    .end local v0    # "colorAdjustment":[Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "1.0"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "1.0"

    aput-object v8, v0, v7

    const/4 v7, 0x2

    const-string v8, "1.0"

    aput-object v8, v0, v7

    .line 94
    .restart local v0    # "colorAdjustment":[Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v7, v8

    .line 95
    iget-object v7, p0, Lcom/android/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v7, v8

    .line 96
    iget-object v7, p0, Lcom/android/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    const/4 v8, 0x2

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v7, v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_1
    iget-object v7, p0, Lcom/android/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 105
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    sget-object v7, Lcom/android/settings/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    array-length v7, v7

    if-ge v3, v7, :cond_3

    .line 106
    sget-object v7, Lcom/android/settings/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    aget v7, v7, v3

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/settings/IntervalSeekBar;

    .line 107
    .local v5, "seekBar":Lcom/android/settings/IntervalSeekBar;
    sget-object v7, Lcom/android/settings/livedisplay/DisplayColor;->SEEKBAR_VALUE_ID:[I

    aget v7, v7, v3

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 108
    .local v6, "value":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/settings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/settings/livedisplay/DisplayColor$ColorSeekBar;

    new-instance v8, Lcom/android/settings/livedisplay/DisplayColor$ColorSeekBar;

    invoke-direct {v8, p0, v5, v6, v3}, Lcom/android/settings/livedisplay/DisplayColor$ColorSeekBar;-><init>(Lcom/android/settings/livedisplay/DisplayColor;Lcom/android/settings/IntervalSeekBar;Landroid/widget/TextView;I)V

    aput-object v8, v7, v3

    .line 109
    iget-object v7, p0, Lcom/android/settings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/settings/livedisplay/DisplayColor$ColorSeekBar;

    aget-object v7, v7, v3

    # getter for: Lcom/android/settings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/android/settings/IntervalSeekBar;
    invoke-static {v7}, Lcom/android/settings/livedisplay/DisplayColor$ColorSeekBar;->access$000(Lcom/android/settings/livedisplay/DisplayColor$ColorSeekBar;)Lcom/android/settings/IntervalSeekBar;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    aget v8, v8, v3

    invoke-virtual {v7, v8}, Lcom/android/settings/IntervalSeekBar;->setProgressFloat(F)V

    .line 110
    const/high16 v7, 0x42c80000    # 100.0f

    iget-object v8, p0, Lcom/android/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    aget v8, v8, v3

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 111
    .local v4, "percent":I
    const-string v7, "%d%%"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 88
    .end local v0    # "colorAdjustment":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "percent":I
    .end local v5    # "seekBar":Lcom/android/settings/IntervalSeekBar;
    .end local v6    # "value":Landroid/widget/TextView;
    :cond_2
    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 97
    .restart local v0    # "colorAdjustment":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/NumberFormatException;
    iget-object v7, p0, Lcom/android/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    .line 99
    iget-object v7, p0, Lcom/android/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    .line 100
    iget-object v7, p0, Lcom/android/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    const/4 v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    goto :goto_1

    .line 113
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "i":I
    :cond_3
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 138
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/livedisplay/DisplayColor;->updateColors([F)V

    .line 139
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 73
    const v0, 0x7f090217

    new-instance v1, Lcom/android/settings/livedisplay/DisplayColor$1;

    invoke-direct {v1, p0}, Lcom/android/settings/livedisplay/DisplayColor$1;-><init>(Lcom/android/settings/livedisplay/DisplayColor;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 161
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/settings/livedisplay/DisplayColor$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 176
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    .line 167
    check-cast v1, Lcom/android/settings/livedisplay/DisplayColor$SavedState;

    .line 168
    .local v1, "myState":Lcom/android/settings/livedisplay/DisplayColor$SavedState;
    invoke-virtual {v1}, Lcom/android/settings/livedisplay/DisplayColor$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 170
    iget-object v2, v1, Lcom/android/settings/livedisplay/DisplayColor$SavedState;->originalColors:[F

    iget-object v3, p0, Lcom/android/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 171
    iget-object v2, v1, Lcom/android/settings/livedisplay/DisplayColor$SavedState;->currentColors:[F

    iget-object v3, p0, Lcom/android/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/settings/livedisplay/DisplayColor$ColorSeekBar;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 173
    iget-object v2, p0, Lcom/android/settings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/settings/livedisplay/DisplayColor$ColorSeekBar;

    aget-object v2, v2, v0

    # getter for: Lcom/android/settings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/android/settings/IntervalSeekBar;
    invoke-static {v2}, Lcom/android/settings/livedisplay/DisplayColor$ColorSeekBar;->access$000(Lcom/android/settings/livedisplay/DisplayColor$ColorSeekBar;)Lcom/android/settings/IntervalSeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/settings/IntervalSeekBar;->setProgressFloat(F)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/android/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    invoke-direct {p0, v2}, Lcom/android/settings/livedisplay/DisplayColor;->updateColors([F)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 143
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 144
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/livedisplay/DisplayColor;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/livedisplay/DisplayColor;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 156
    :goto_0
    return-object v0

    .line 149
    :cond_1
    new-instance v0, Lcom/android/settings/livedisplay/DisplayColor$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/livedisplay/DisplayColor$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 150
    .local v0, "myState":Lcom/android/settings/livedisplay/DisplayColor$SavedState;
    iget-object v2, p0, Lcom/android/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    iput-object v2, v0, Lcom/android/settings/livedisplay/DisplayColor$SavedState;->currentColors:[F

    .line 151
    iget-object v2, p0, Lcom/android/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    iput-object v2, v0, Lcom/android/settings/livedisplay/DisplayColor$SavedState;->originalColors:[F

    .line 154
    iget-object v2, p0, Lcom/android/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    invoke-direct {p0, v2}, Lcom/android/settings/livedisplay/DisplayColor;->updateColors([F)V

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/livedisplay/DisplayColor;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 122
    .local v0, "d":Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 123
    .local v1, "defaultsButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/livedisplay/DisplayColor$2;

    invoke-direct {v2, p0}, Lcom/android/settings/livedisplay/DisplayColor$2;-><init>(Lcom/android/settings/livedisplay/DisplayColor;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method
