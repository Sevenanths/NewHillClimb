.class public Lcom/fingersoft/fsadsdk/advertising/Comparators/InterstitialProviderComparator;
.super Ljava/lang/Object;
.source "InterstitialProviderComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;",
        ">;"
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;",
            ">;"
        }
    .end annotation
.end field

.field providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/Comparators/InterstitialProviderComparator;->providers:Ljava/util/List;

    .line 18
    invoke-direct {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/Comparators/InterstitialProviderComparator;->processList(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private processList(Ljava/lang/String;)V
    .locals 7
    .parameter "list"

    .prologue
    const/4 v3, 0x0

    .line 23
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, providers:[Ljava/lang/String;
    array-length v4, v1

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_0

    .line 31
    return-void

    .line 24
    :cond_0
    aget-object v0, v1, v2

    .line 26
    .local v0, provider:Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 27
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/Comparators/InterstitialProviderComparator;->providers:Ljava/util/List;

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_1
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/Comparators/InterstitialProviderComparator;->providers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public compare(Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;)I
    .locals 5
    .parameter "adProvider1"
    .parameter "adProvider2"

    .prologue
    const/4 v1, -0x1

    .line 50
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/Comparators/InterstitialProviderComparator;->providers:Ljava/util/List;

    invoke-virtual {p1}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/Comparators/InterstitialProviderComparator;->providers:Ljava/util/List;

    invoke-virtual {p2}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 52
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/Comparators/InterstitialProviderComparator;->providers:Ljava/util/List;

    invoke-virtual {p1}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/Comparators/InterstitialProviderComparator;->providers:Ljava/util/List;

    invoke-virtual {p2}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    sub-int v0, v2, v3

    .line 53
    .local v0, result:I
    if-lez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 54
    :cond_2
    if-ltz v0, :cond_0

    .line 55
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;

    check-cast p2, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;

    invoke-virtual {p0, p1, p2}, Lcom/fingersoft/fsadsdk/advertising/Comparators/InterstitialProviderComparator;->compare(Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;)I

    move-result v0

    return v0
.end method

.method public sort(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, providerList:Ljava/util/List;,"Ljava/util/List<Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 43
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 44
    return-object v0

    .line 36
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;

    .line 38
    .local v1, provider:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/Comparators/InterstitialProviderComparator;->providers:Ljava/util/List;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
