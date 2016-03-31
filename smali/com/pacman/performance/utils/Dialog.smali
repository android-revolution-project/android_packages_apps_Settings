.class public Lcom/pacman/performance/utils/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Lcom/pacman/performance/utils/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pacman/performance/utils/Dialog$DialogReturn;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showDialogGeneric(Ljava/lang/String;Ljava/lang/String;Lcom/pacman/performance/utils/Dialog$DialogReturn;ILcom/pacman/performance/utils/CommandControl$CommandType;ILandroid/app/Activity;)V
    .locals 13
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "dialogreturn"    # Lcom/pacman/performance/utils/Dialog$DialogReturn;
    .param p4, "input"    # I
    .param p5, "command"    # Lcom/pacman/performance/utils/CommandControl$CommandType;
    .param p6, "customID"    # I
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p7

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    .local v10, "layout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50
    const/16 v1, 0x1e

    const/16 v2, 0x14

    const/16 v3, 0x1e

    const/16 v5, 0x14

    invoke-virtual {v10, v1, v2, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 52
    new-instance v4, Landroid/widget/EditText;

    move-object/from16 v0, p7

    invoke-direct {v4, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 53
    .local v4, "editor":Landroid/widget/EditText;
    const/16 v1, 0x11

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 54
    invoke-virtual {v4, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    if-eqz p4, :cond_0

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 58
    :cond_0
    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p7

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v9, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 62
    const/high16 v2, 0x1040000

    .line 63
    new-instance v3, Lcom/pacman/performance/utils/Dialog$2;

    invoke-direct {v3, p0}, Lcom/pacman/performance/utils/Dialog$2;-><init>(Lcom/pacman/performance/utils/Dialog;)V

    .line 62
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 68
    const v12, 0x104000a

    new-instance v1, Lcom/pacman/performance/utils/Dialog$3;

    move-object v2, p0

    move-object/from16 v3, p5

    move-object v5, p1

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/pacman/performance/utils/Dialog$3;-><init>(Lcom/pacman/performance/utils/Dialog;Lcom/pacman/performance/utils/CommandControl$CommandType;Landroid/widget/EditText;Ljava/lang/String;ILandroid/app/Activity;Lcom/pacman/performance/utils/Dialog$DialogReturn;)V

    invoke-virtual {v11, v12, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 78
    return-void
.end method

.method public showDialogList([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/pacman/performance/utils/Dialog$DialogReturn;Lcom/pacman/performance/utils/CommandControl$CommandType;ILandroid/app/Activity;)V
    .locals 11
    .param p1, "modifiedItems"    # [Ljava/lang/String;
    .param p2, "items"    # [Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "dialogreturn"    # Lcom/pacman/performance/utils/Dialog$DialogReturn;
    .param p5, "command"    # Lcom/pacman/performance/utils/CommandControl$CommandType;
    .param p6, "customID"    # I
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p7

    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    .local v10, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/pacman/performance/utils/Dialog$1;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/pacman/performance/utils/Dialog$1;-><init>(Lcom/pacman/performance/utils/Dialog;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/pacman/performance/utils/CommandControl$CommandType;ILandroid/app/Activity;Lcom/pacman/performance/utils/Dialog$DialogReturn;)V

    invoke-virtual {v10, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 35
    return-void
.end method

.method public showSeekBarDialog([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/pacman/performance/utils/Dialog$DialogReturn;Landroid/app/Activity;)V
    .locals 13
    .param p1, "modifiedvalues"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "currentvalue"    # Ljava/lang/String;
    .param p4, "dialogreturn"    # Lcom/pacman/performance/utils/Dialog$DialogReturn;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    invoke-static/range {p5 .. p5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 85
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f03001a

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 87
    .local v9, "view":Landroid/view/View;
    const v10, 0x7f090057

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 88
    .local v8, "text":Landroid/widget/TextView;
    const v10, 0x7f090058

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 89
    .local v4, "minus":Landroid/widget/Button;
    const v10, 0x7f090059

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    .line 90
    .local v7, "seekbar":Landroid/widget/SeekBar;
    const v10, 0x7f09005a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 92
    .local v5, "plus":Landroid/widget/Button;
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v6, 0x0

    .line 95
    .local v6, "position":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v10, p1

    if-lt v2, v10, :cond_0

    .line 98
    array-length v10, p1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setMax(I)V

    .line 99
    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 101
    new-instance v10, Lcom/pacman/performance/utils/Dialog$4;

    invoke-direct {v10, p0, v8, p1}, Lcom/pacman/performance/utils/Dialog$4;-><init>(Lcom/pacman/performance/utils/Dialog;Landroid/widget/TextView;[Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 115
    new-instance v10, Lcom/pacman/performance/utils/Dialog$5;

    invoke-direct {v10, p0, v7}, Lcom/pacman/performance/utils/Dialog$5;-><init>(Lcom/pacman/performance/utils/Dialog;Landroid/widget/SeekBar;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v10, Lcom/pacman/performance/utils/Dialog$6;

    invoke-direct {v10, p0, v7}, Lcom/pacman/performance/utils/Dialog$6;-><init>(Lcom/pacman/performance/utils/Dialog;Landroid/widget/SeekBar;)V

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p5

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 131
    const/high16 v11, 0x1040000

    .line 132
    new-instance v12, Lcom/pacman/performance/utils/Dialog$7;

    invoke-direct {v12, p0}, Lcom/pacman/performance/utils/Dialog$7;-><init>(Lcom/pacman/performance/utils/Dialog;)V

    .line 131
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 137
    const v11, 0x104000a

    new-instance v12, Lcom/pacman/performance/utils/Dialog$8;

    move-object/from16 v0, p4

    invoke-direct {v12, p0, v0, p2, v7}, Lcom/pacman/performance/utils/Dialog$8;-><init>(Lcom/pacman/performance/utils/Dialog;Lcom/pacman/performance/utils/Dialog$DialogReturn;[Ljava/lang/String;Landroid/widget/SeekBar;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 142
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 144
    return-void

    .line 96
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    aget-object v10, p1, v2

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v6, v2

    .line 95
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
