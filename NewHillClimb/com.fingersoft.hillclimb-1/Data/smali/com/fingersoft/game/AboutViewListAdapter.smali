.class public Lcom/fingersoft/game/AboutViewListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AboutViewListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/fingersoft/game/AboutListViewItem;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/app/Activity;

.field mMetrics:Landroid/util/DisplayMetrics;

.field mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fingersoft/game/AboutListViewItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter "viewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/fingersoft/game/AboutListViewItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/fingersoft/game/AboutListViewItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 22
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/fingersoft/game/AboutViewListAdapter;->mMetrics:Landroid/util/DisplayMetrics;

    .line 27
    iput-object p1, p0, Lcom/fingersoft/game/AboutViewListAdapter;->mContext:Landroid/app/Activity;

    .line 28
    iput-object p3, p0, Lcom/fingersoft/game/AboutViewListAdapter;->mObjects:Ljava/util/List;

    .line 30
    iget-object v0, p0, Lcom/fingersoft/game/AboutViewListAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/fingersoft/game/AboutViewListAdapter;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fingersoft/game/AboutViewListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/fingersoft/game/AboutListViewItem;
    .locals 1
    .parameter "idx"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fingersoft/game/AboutViewListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fingersoft/game/AboutListViewItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/fingersoft/game/AboutViewListAdapter;->getItem(I)Lcom/fingersoft/game/AboutListViewItem;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/high16 v9, 0x4280

    .line 45
    move-object v4, p2

    .line 46
    .local v4, row:Landroid/view/View;
    if-nez v4, :cond_0

    .line 47
    iget-object v6, p0, Lcom/fingersoft/game/AboutViewListAdapter;->mContext:Landroid/app/Activity;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 48
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030001

    const/4 v7, 0x0

    invoke-virtual {v2, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 51
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fingersoft/game/AboutViewListAdapter;->getItem(I)Lcom/fingersoft/game/AboutListViewItem;

    move-result-object v3

    .line 53
    .local v3, listItem:Lcom/fingersoft/game/AboutListViewItem;
    const v6, 0x7f070015

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 54
    .local v1, icon:Landroid/widget/ImageView;
    const v6, 0x7f070016

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 55
    .local v5, title:Landroid/widget/TextView;
    const v6, 0x7f070017

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    .local v0, desc:Landroid/widget/TextView;
    iget v6, v3, Lcom/fingersoft/game/AboutListViewItem;->mIconID:I

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/fingersoft/game/AboutViewListAdapter;->mMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v7, v9

    float-to-int v7, v7

    iget-object v8, p0, Lcom/fingersoft/game/AboutViewListAdapter;->mMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v6, v3, Lcom/fingersoft/game/AboutListViewItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v6, v3, Lcom/fingersoft/game/AboutListViewItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-object v4
.end method
