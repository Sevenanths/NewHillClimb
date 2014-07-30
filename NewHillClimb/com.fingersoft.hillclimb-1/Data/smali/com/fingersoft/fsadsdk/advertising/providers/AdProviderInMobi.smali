.class public Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;
.super Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;
.source "AdProviderInMobi.java"

# interfaces
.implements Lcom/inmobi/monetization/IMBannerListener;


# static fields
.field private static final BANNER_AD_HEIGHT:I = 0x32

.field private static final BANNER_AD_WIDTH:I = 0x140

.field private static final MED_BANNER_HEIGHT:I = 0x3c

.field private static final MED_BANNER_WIDTH:I = 0x1e0


# instance fields
.field private banner:Lcom/inmobi/monetization/IMBanner;

.field private inMobiId:Ljava/lang/String;

.field private mAdFailCalled:Z

.field private portraitOnly:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "inMobiId"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;-><init>()V

    .line 17
    iput-boolean v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->mAdFailCalled:Z

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->banner:Lcom/inmobi/monetization/IMBanner;

    .line 20
    iput-boolean v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->portraitOnly:Z

    .line 37
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->inMobiId:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter "inMobiId"
    .parameter "portraitOnly"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;-><init>()V

    .line 17
    iput-boolean v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->mAdFailCalled:Z

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->banner:Lcom/inmobi/monetization/IMBanner;

    .line 20
    iput-boolean v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->portraitOnly:Z

    .line 31
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->inMobiId:Ljava/lang/String;

    .line 32
    iput-boolean p2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->portraitOnly:Z

    .line 33
    return-void
.end method


# virtual methods
.method public adProviderCreate(Z)V
    .locals 7
    .parameter "testMode"

    .prologue
    const/4 v6, 0x0

    .line 51
    :try_start_0
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->inMobiId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - onProviderCreate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 55
    const/16 v0, 0xf

    .line 57
    .local v0, bannerSize:I
    iget-boolean v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->portraitOnly:Z

    if-nez v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x1e0

    invoke-static {v3, v4}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->canFit(Landroid/app/Activity;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    const/16 v0, 0xc

    .line 64
    :cond_0
    new-instance v3, Lcom/inmobi/monetization/IMBanner;

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->inMobiId:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/inmobi/monetization/IMBanner;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->banner:Lcom/inmobi/monetization/IMBanner;

    .line 65
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->banner:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v3, p0}, Lcom/inmobi/monetization/IMBanner;->setIMBannerListener(Lcom/inmobi/monetization/IMBannerListener;)V

    .line 66
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->banner:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v3}, Lcom/inmobi/monetization/IMBanner;->loadBanner()V

    .line 67
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->mAdFailCalled:Z

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - Called load ad"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 69
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->banner:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v3, v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    .end local v0           #bannerSize:I
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Ljava/lang/Exception;
    iput-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->banner:Lcom/inmobi/monetization/IMBanner;

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 75
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    goto :goto_0

    .line 77
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 79
    .local v2, noMemoryAnymore:Ljava/lang/OutOfMemoryError;
    iput-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->banner:Lcom/inmobi/monetization/IMBanner;

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " Out of memory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "in_mobi"

    return-object v0
.end method

.method public getOptimalSlotSize()Ljava/lang/Integer;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v13, 0xf

    .line 89
    :try_start_0
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 90
    .local v7, metrics:Landroid/util/DisplayMetrics;
    iget-object v10, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v10}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 92
    iget v10, v7, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v10

    .line 93
    .local v0, density:D
    iget v10, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v8, v10

    .line 94
    .local v8, width:D
    iget v10, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, v10

    .line 96
    .local v3, height:D
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "density "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", width "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", height "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 98
    const/4 v10, 0x3

    new-array v6, v10, [[I

    const/4 v10, 0x0

    .line 99
    const/4 v11, 0x3

    new-array v11, v11, [I

    fill-array-data v11, :array_0

    aput-object v11, v6, v10

    const/4 v10, 0x1

    .line 100
    const/4 v11, 0x3

    new-array v11, v11, [I

    fill-array-data v11, :array_1

    aput-object v11, v6, v10

    const/4 v10, 0x2

    .line 101
    const/4 v11, 0x3

    new-array v11, v11, [I

    fill-array-data v11, :array_2

    aput-object v11, v6, v10

    .line 104
    .local v6, maparray:[[I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v10, v6

    if-lt v5, v10, :cond_0

    .line 112
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " - Banner size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xf

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 113
    const/16 v10, 0xf

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 117
    .end local v0           #density:D
    .end local v3           #height:D
    .end local v5           #i:I
    .end local v6           #maparray:[[I
    .end local v7           #metrics:Landroid/util/DisplayMetrics;
    .end local v8           #width:D
    :goto_1
    return-object v10

    .line 106
    .restart local v0       #density:D
    .restart local v3       #height:D
    .restart local v5       #i:I
    .restart local v6       #maparray:[[I
    .restart local v7       #metrics:Landroid/util/DisplayMetrics;
    .restart local v8       #width:D
    :cond_0
    aget-object v10, v6, v5

    const/4 v11, 0x1

    aget v10, v10, v11

    int-to-double v10, v10

    mul-double/2addr v10, v0

    cmpg-double v10, v10, v8

    if-gtz v10, :cond_1

    aget-object v10, v6, v5

    const/4 v11, 0x2

    aget v10, v10, v11

    int-to-double v10, v10

    mul-double/2addr v10, v0

    cmpg-double v10, v10, v3

    if-gtz v10, :cond_1

    .line 108
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " - Banner size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v5

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 109
    aget-object v10, v6, v5

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_1

    .line 104
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 115
    .end local v0           #density:D
    .end local v3           #height:D
    .end local v5           #i:I
    .end local v6           #maparray:[[I
    .end local v7           #metrics:Landroid/util/DisplayMetrics;
    .end local v8           #width:D
    :catch_0
    move-exception v2

    .line 117
    .local v2, e:Ljava/lang/Exception;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_1

    .line 99
    :array_0
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xd8t 0x2t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
    .end array-data

    .line 100
    :array_1
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xd4t 0x1t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    .line 101
    :array_2
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onBannerInteraction(Lcom/inmobi/monetization/IMBanner;Ljava/util/Map;)V
    .locals 2
    .parameter "arg0"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMBanner;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, arg1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v1, "adreceived/inmobi"

    invoke-virtual {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public onBannerRequestFailed(Lcom/inmobi/monetization/IMBanner;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 2
    .parameter "arg0"
    .parameter "errorCode"

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - Banner failed with error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/inmobi/monetization/IMErrorCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->mAdFailCalled:Z

    .line 132
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    .line 133
    return-void
.end method

.method public onBannerRequestSucceeded(Lcom/inmobi/monetization/IMBanner;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - Banner loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->banner:Lcom/inmobi/monetization/IMBanner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMBanner;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v1, "adreceived/inmobi"

    invoke-virtual {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public onDismissBannerScreen(Lcom/inmobi/monetization/IMBanner;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 146
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/monetization/IMBanner;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 151
    return-void
.end method

.method public onShowBannerScreen(Lcom/inmobi/monetization/IMBanner;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;->banner:Lcom/inmobi/monetization/IMBanner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMBanner;->setVisibility(I)V

    .line 157
    return-void
.end method
