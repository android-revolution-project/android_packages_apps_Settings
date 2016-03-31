.class public interface abstract Lcom/pacman/performance/utils/views/GenericView$Item;
.super Ljava/lang/Object;
.source "GenericView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pacman/performance/utils/views/GenericView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Item"
.end annotation


# virtual methods
.method public abstract getFragment()Landroid/support/v4/app/Fragment;
.end method

.method public abstract getSummary()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract isHeader()Z
.end method
