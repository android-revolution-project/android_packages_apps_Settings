.class Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PolicyListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/DeviceAdminSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminSettings;)V
    .locals 2

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 162
    invoke-virtual {p1}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 164
    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/app/admin/DeviceAdminInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    .line 309
    iget-object v5, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v5}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 310
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/DeviceAdminSettings$ViewHolder;

    .line 311
    .local v4, "vh":Lcom/android/settings/DeviceAdminSettings$ViewHolder;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 312
    .local v1, "activityIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    # invokes: Lcom/android/settings/DeviceAdminSettings;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I
    invoke-static {v7, p2}, Lcom/android/settings/DeviceAdminSettings;->access$200(Lcom/android/settings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 314
    .local v2, "badgedIcon":Landroid/graphics/drawable/Drawable;
    iget-object v5, v4, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    iget-object v5, v4, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v5, v4, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    # invokes: Lcom/android/settings/DeviceAdminSettings;->isActiveAdmin(Landroid/app/admin/DeviceAdminInfo;)Z
    invoke-static {v6, p2}, Lcom/android/settings/DeviceAdminSettings;->access$100(Lcom/android/settings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 317
    invoke-direct {p0, p2}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->isEnabled(Ljava/lang/Object;)Z

    move-result v3

    .line 319
    .local v3, "enabled":Z
    :try_start_0
    iget-object v5, v4, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    iget-object v5, v4, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 323
    iget-object v5, v4, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 324
    iget-object v5, v4, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 325
    iget-object v5, v4, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 326
    return-void

    .line 320
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private isEnabled(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 258
    instance-of v2, p1, Landroid/app/admin/DeviceAdminInfo;

    if-nez v2, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 262
    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    .line 263
    .local v0, "info":Landroid/app/admin/DeviceAdminInfo;
    iget-object v2, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    # invokes: Lcom/android/settings/DeviceAdminSettings;->isActiveAdmin(Landroid/app/admin/DeviceAdminInfo;)Z
    invoke-static {v2, v0}, Lcom/android/settings/DeviceAdminSettings;->access$100(Lcom/android/settings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    # invokes: Lcom/android/settings/DeviceAdminSettings;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I
    invoke-static {v2, v0}, Lcom/android/settings/DeviceAdminSettings;->access$200(Lcom/android/settings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    # invokes: Lcom/android/settings/DeviceAdminSettings;->isDeviceOwner(Landroid/app/admin/DeviceAdminInfo;)Z
    invoke-static {v2, v0}, Lcom/android/settings/DeviceAdminSettings;->access$300(Lcom/android/settings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    # invokes: Lcom/android/settings/DeviceAdminSettings;->isProfileOwner(Landroid/app/admin/DeviceAdminInfo;)Z
    invoke-static {v2, v0}, Lcom/android/settings/DeviceAdminSettings;->access$400(Lcom/android/settings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private newDeviceAdminView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 289
    iget-object v2, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040046

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 290
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/android/settings/DeviceAdminSettings$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings/DeviceAdminSettings$ViewHolder;-><init>()V

    .line 291
    .local v0, "h":Lcom/android/settings/DeviceAdminSettings$ViewHolder;
    const v2, 0x7f100003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 292
    const v2, 0x7f10002c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    .line 293
    const v2, 0x7f1000c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 294
    const v2, 0x7f1000c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    .line 295
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 296
    return-object v1
.end method

.method private newTitleView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 300
    iget-object v2, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    const v5, 0x101008c

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 303
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 305
    .local v1, "resId":I
    iget-object v2, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "adminCount":I
    iget-object v3, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    # getter for: Lcom/android/settings/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/settings/DeviceAdminSettings;->access$000(Lcom/android/settings/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 175
    .local v2, "profileCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 176
    iget-object v3, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    # getter for: Lcom/android/settings/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/settings/DeviceAdminSettings;->access$000(Lcom/android/settings/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_0
    add-int v3, v0, v2

    return v3
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 190
    if-gez p1, :cond_0

    .line 191
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v5

    .line 196
    :cond_0
    move v0, p1

    .line 197
    .local v0, "adminPosition":I
    iget-object v5, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    # getter for: Lcom/android/settings/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/settings/DeviceAdminSettings;->access$000(Lcom/android/settings/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 198
    .local v3, "n":I
    const/4 v1, 0x0

    .line 199
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 201
    iget-object v5, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    # getter for: Lcom/android/settings/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/settings/DeviceAdminSettings;->access$000(Lcom/android/settings/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 202
    .local v2, "listSize":I
    if-ge v0, v2, :cond_2

    .line 207
    .end local v2    # "listSize":I
    :cond_1
    if-ne v1, v3, :cond_3

    .line 208
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v5

    .line 205
    .restart local v2    # "listSize":I
    :cond_2
    sub-int/2addr v0, v2

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v2    # "listSize":I
    :cond_3
    if-nez v0, :cond_5

    .line 212
    iget-object v5, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v5}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 213
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    # getter for: Lcom/android/settings/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/settings/DeviceAdminSettings;->access$000(Lcom/android/settings/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 214
    const v5, 0x7f090a4f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 220
    .end local v4    # "res":Landroid/content/res/Resources;
    :goto_1
    return-object v5

    .line 216
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_4
    const v5, 0x7f090a50

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 220
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    # getter for: Lcom/android/settings/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/settings/DeviceAdminSettings;->access$000(Lcom/android/settings/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 226
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 248
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 273
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Landroid/app/admin/DeviceAdminInfo;

    if-eqz v2, :cond_1

    .line 274
    if-nez p2, :cond_0

    .line 275
    invoke-direct {p0, p3}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->newDeviceAdminView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 277
    :cond_0
    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-direct {p0, p2, v0}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->bindView(Landroid/view/View;Landroid/app/admin/DeviceAdminInfo;)V

    .line 285
    :goto_0
    return-object p2

    .line 279
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    if-nez p2, :cond_2

    .line 280
    invoke-direct {p0, p3}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->newTitleView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 282
    :cond_2
    const v2, 0x1020016

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 283
    .local v1, "title":Landroid/widget/TextView;
    check-cast v0, Ljava/lang/String;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 254
    .local v0, "o":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
