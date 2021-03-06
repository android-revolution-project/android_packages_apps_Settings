.class public Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProtectedAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultImg:Landroid/graphics/drawable/Drawable;

.field private mIcons:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflator:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/applications/ProtectedAppsActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ProtectedAppsActivity;Landroid/content/Context;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    .line 320
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mApps:Ljava/util/List;

    .line 324
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mInflator:Landroid/view/LayoutInflater;

    .line 327
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mDefaultImg:Landroid/graphics/drawable/Drawable;

    .line 328
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mIcons:Ljava/util/concurrent/ConcurrentHashMap;

    .line 329
    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mIcons:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 335
    if-nez p2, :cond_0

    .line 336
    iget-object v4, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mInflator:Landroid/view/LayoutInflater;

    const v5, 0x7f040064

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 337
    new-instance v3, Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;

    invoke-direct {v3, p2}, Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;-><init>(Landroid/view/View;)V

    .line 338
    .local v3, "viewHolder":Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 343
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;

    .line 345
    .local v0, "app":Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;
    iget-object v4, v3, Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v4, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mIcons:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v0, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 348
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v4, v3, Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object v4, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    iget-object v5, v0, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;->componentName:Landroid/content/ComponentName;

    # invokes: Lcom/android/settings/applications/ProtectedAppsActivity;->getProtectedStateFromComponentName(Landroid/content/ComponentName;)Z
    invoke-static {v4, v5}, Lcom/android/settings/applications/ProtectedAppsActivity;->access$400(Lcom/android/settings/applications/ProtectedAppsActivity;Landroid/content/ComponentName;)Z

    move-result v2

    .line 351
    .local v2, "state":Z
    iget-object v4, v3, Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 352
    if-eqz v2, :cond_2

    .line 353
    iget-object v4, v3, Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;->launch:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object v4, v3, Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;->launch:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 355
    iget-object v4, v3, Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;->launch:Landroid/view/View;

    new-instance v5, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$1;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$1;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    :goto_2
    iget-object v4, v3, Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;->container:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 370
    iget-object v4, v3, Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;->container:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    # getter for: Lcom/android/settings/applications/ProtectedAppsActivity;->mAppClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v5}, Lcom/android/settings/applications/ProtectedAppsActivity;->access$500(Lcom/android/settings/applications/ProtectedAppsActivity;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    return-object p2

    .line 340
    .end local v0    # "app":Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;
    .end local v2    # "state":Z
    .end local v3    # "viewHolder":Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;

    .restart local v3    # "viewHolder":Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;
    goto :goto_0

    .line 348
    .restart local v0    # "app":Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mDefaultImg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 366
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "state":Z
    :cond_2
    iget-object v4, v3, Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;->launch:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 6

    .prologue
    .line 381
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 384
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->getCount()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 385
    .local v2, "newApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 386
    .local v3, "oldApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 387
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;

    .line 388
    .local v0, "app":Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;
    iget-object v4, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mApps:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 389
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 395
    .end local v0    # "app":Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 396
    new-instance v4, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;Lcom/android/settings/applications/ProtectedAppsActivity$1;)V

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 397
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 398
    iput-object v2, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mApps:Ljava/util/List;

    .line 402
    :goto_2
    return-void

    .line 400
    :cond_2
    iput-object v3, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mApps:Ljava/util/List;

    goto :goto_2
.end method
