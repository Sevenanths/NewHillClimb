.class public Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;
.super Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;
.source "AdProviderFs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;,
        Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;
    }
.end annotation


# static fields
.field static final APPRELEASE_DATAFILE:Ljava/lang/String; = "ignored_ads"


# instance fields
.field campaignIndex:I

.field campaigns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;",
            ">;"
        }
    .end annotation
.end field

.field clickLink:Ljava/lang/String;

.field ctimer:Landroid/os/CountDownTimer;

.field mIgnoreList:Ljava/lang/String;

.field mImageView:Landroid/widget/ImageView;

.field mLinkListener:Lcom/fingersoft/fsadsdk/advertising/LinkListener;

.field mLoader:Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;

.field mRetrievedImage:Landroid/graphics/drawable/Drawable;

.field refreshTimeInMs:J

.field showCount:I

.field shownCampaigns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field timeLeft:J


# direct methods
.method public constructor <init>(Lcom/fingersoft/fsadsdk/advertising/LinkListener;)V
    .locals 3
    .parameter "linkListener"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mIgnoreList:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mImageView:Landroid/widget/ImageView;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->clickLink:Ljava/lang/String;

    .line 36
    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mRetrievedImage:Landroid/graphics/drawable/Drawable;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->shownCampaigns:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaigns:Ljava/util/List;

    .line 41
    iput v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaignIndex:I

    .line 42
    iput v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->showCount:I

    .line 44
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->refreshTimeInMs:J

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->timeLeft:J

    .line 47
    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mLoader:Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;

    .line 48
    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->ctimer:Landroid/os/CountDownTimer;

    .line 50
    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mLinkListener:Lcom/fingersoft/fsadsdk/advertising/LinkListener;

    .line 54
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mLinkListener:Lcom/fingersoft/fsadsdk/advertising/LinkListener;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->stopTimer()V

    return-void
.end method

.method private canShowCampaign(Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;)Z
    .locals 5
    .parameter "campaign"

    .prologue
    const/4 v3, 0x1

    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->shownCampaigns:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 119
    .local v1, shownTimes:I
    invoke-virtual {p1}, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->getMaxShowTimes()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v2, 0x0

    .line 124
    .end local v1           #shownTimes:I
    :goto_0
    return v2

    .restart local v1       #shownTimes:I
    :cond_0
    move v2, v3

    .line 120
    goto :goto_0

    .line 122
    .end local v1           #shownTimes:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v2, v3

    .line 124
    goto :goto_0
.end method

.method private getOptimalSlotSize()[F
    .locals 13

    .prologue
    const/4 v10, 0x2

    .line 200
    new-array v7, v10, [F

    fill-array-data v7, :array_0

    .line 204
    .local v7, retArray:[F
    :try_start_0
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 205
    .local v6, metrics:Landroid/util/DisplayMetrics;
    iget-object v10, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v10}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 206
    iget v10, v6, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v10

    .line 207
    .local v0, density:D
    iget v10, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v8, v10

    .line 208
    .local v8, width:D
    iget v10, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v10

    .line 210
    .local v2, height:D
    const/4 v10, 0x3

    new-array v5, v10, [[F

    const/4 v10, 0x0

    .line 211
    const/4 v11, 0x3

    new-array v11, v11, [F

    fill-array-data v11, :array_1

    aput-object v11, v5, v10

    const/4 v10, 0x1

    .line 212
    const/4 v11, 0x3

    new-array v11, v11, [F

    fill-array-data v11, :array_2

    aput-object v11, v5, v10

    const/4 v10, 0x2

    .line 213
    const/4 v11, 0x3

    new-array v11, v11, [F

    fill-array-data v11, :array_3

    aput-object v11, v5, v10

    .line 216
    .local v5, maparray:[[F
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v10, v5

    if-lt v4, v10, :cond_0

    .line 227
    .end local v0           #density:D
    .end local v2           #height:D
    .end local v4           #i:I
    .end local v5           #maparray:[[F
    .end local v6           #metrics:Landroid/util/DisplayMetrics;
    .end local v8           #width:D
    :goto_1
    return-object v7

    .line 218
    .restart local v0       #density:D
    .restart local v2       #height:D
    .restart local v4       #i:I
    .restart local v5       #maparray:[[F
    .restart local v6       #metrics:Landroid/util/DisplayMetrics;
    .restart local v8       #width:D
    :cond_0
    aget-object v10, v5, v4

    const/4 v11, 0x1

    aget v10, v10, v11

    float-to-int v10, v10

    int-to-double v10, v10

    mul-double/2addr v10, v0

    cmpg-double v10, v10, v8

    if-gtz v10, :cond_1

    aget-object v10, v5, v4

    const/4 v11, 0x2

    aget v10, v10, v11

    float-to-int v10, v10

    int-to-double v10, v10

    mul-double/2addr v10, v0

    cmpg-double v10, v10, v2

    if-gtz v10, :cond_1

    .line 220
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Size = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v11, v5, v4

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 221
    const/4 v10, 0x0

    aget-object v11, v5, v4

    const/4 v12, 0x1

    aget v11, v11, v12

    aput v11, v7, v10

    .line 222
    const/4 v10, 0x1

    aget-object v11, v5, v4

    const/4 v12, 0x2

    aget v11, v11, v12

    aput v11, v7, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 226
    .end local v0           #density:D
    .end local v2           #height:D
    .end local v4           #i:I
    .end local v5           #maparray:[[F
    .end local v6           #metrics:Landroid/util/DisplayMetrics;
    .end local v8           #width:D
    :catch_0
    move-exception v10

    goto :goto_1

    .line 200
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x43t
        0x0t 0x0t 0x48t 0x42t
    .end array-data

    .line 211
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x30t 0x41t
        0x0t 0x0t 0x36t 0x44t
        0x0t 0x0t 0xb4t 0x42t
    .end array-data

    .line 212
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0xeat 0x43t
        0x0t 0x0t 0x70t 0x42t
    .end array-data

    .line 213
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0xa0t 0x43t
        0x0t 0x0t 0x48t 0x42t
    .end array-data
.end method

.method private stopTimer()V
    .locals 3

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->ctimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->ctimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error stopping timer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeIgnoredAds()V
    .locals 6

    .prologue
    .line 187
    const-string v1, ""

    .line 188
    .local v1, ignoreList:Ljava/lang/String;
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->shownCampaigns:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 192
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ignored_ads"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 193
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, "ignore"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    return-void

    .line 188
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 190
    .local v2, key:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->shownCampaigns:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public adPause()V
    .locals 2

    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": Pausing ad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->ctimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->ctimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public adProviderClose()V
    .locals 1

    .prologue
    .line 358
    :try_start_0
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaignIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaignIndex:I

    .line 359
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->ctimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->ctimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public adProviderCreate(Z)V
    .locals 5
    .parameter "testMode"

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->constructView()V

    .line 69
    new-instance v1, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;

    invoke-direct {v1, p0}, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;-><init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;)V

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mLoader:Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;

    .line 70
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mLoader:Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->buildIgnoreList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - failed onProviderCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->stopTimer()V

    .line 77
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    goto :goto_0
.end method

.method public adResume()V
    .locals 2

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": Resuming ad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 350
    iget-wide v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->timeLeft:J

    invoke-virtual {p0, v0, v1}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->startCountdown(J)V

    .line 351
    return-void
.end method

.method buildIgnoreList()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 85
    :try_start_0
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v5}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "ignored_ads"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "ignore_ads"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mIgnoreList:Ljava/lang/String;

    .line 86
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mIgnoreList:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, ads:[Ljava/lang/String;
    array-length v5, v2

    :goto_0
    if-lt v4, v5, :cond_0

    .line 97
    .end local v2           #ads:[Ljava/lang/String;
    :goto_1
    return-void

    .line 87
    .restart local v2       #ads:[Ljava/lang/String;
    :cond_0
    aget-object v0, v2, v4

    .line 89
    .local v0, ad:Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, adParts:[Ljava/lang/String;
    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->shownCampaigns:Ljava/util/HashMap;

    const/4 v7, 0x0

    aget-object v7, v1, v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    .end local v0           #ad:Ljava/lang/String;
    .end local v1           #adParts:[Ljava/lang/String;
    .end local v2           #ads:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 95
    .local v3, e:Ljava/lang/Exception;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->shownCampaigns:Ljava/util/HashMap;

    goto :goto_1
.end method

.method constructView()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f00

    .line 101
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v6}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mImageView:Landroid/widget/ImageView;

    .line 103
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v5}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->density:F

    .line 104
    .local v3, scale:F
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->getOptimalSlotSize()[F

    move-result-object v2

    .line 105
    .local v2, optimalSize:[F
    const/4 v5, 0x0

    aget v5, v2, v5

    mul-float/2addr v5, v3

    add-float/2addr v5, v7

    float-to-int v4, v5

    .line 106
    .local v4, width:I
    const/4 v5, 0x1

    aget v5, v2, v5

    mul-float/2addr v5, v3

    add-float/2addr v5, v7

    float-to-int v0, v5

    .line 108
    .local v0, height:I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 110
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " - onProviderCreate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "fingersoft"

    return-object v0
.end method

.method public showAd()V
    .locals 9

    .prologue
    .line 130
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaigns:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaigns:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    iget v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaignIndex:I

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaigns:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 134
    :try_start_0
    new-instance v3, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mImageView:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;-><init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;Landroid/widget/ImageView;)V

    .line 136
    .local v3, task:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;
    const/4 v0, 0x0

    .line 138
    .local v0, campaignStarted:Z
    :goto_0
    if-nez v0, :cond_0

    iget v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaignIndex:I

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaigns:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 163
    :cond_0
    if-nez v0, :cond_1

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " - no more valid campaigns available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->stopTimer()V

    .line 167
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    .line 183
    .end local v0           #campaignStarted:Z
    .end local v3           #task:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;
    :cond_1
    :goto_1
    return-void

    .line 140
    .restart local v0       #campaignStarted:Z
    .restart local v3       #task:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;
    :cond_2
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaigns:Ljava/util/List;

    iget v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaignIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->getClickLink()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, clickLink:Ljava/lang/String;
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaigns:Ljava/util/List;

    iget v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaignIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;

    invoke-direct {p0, v4}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->canShowCampaign(Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 144
    iget v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaignIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaignIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    .end local v0           #campaignStarted:Z
    .end local v1           #clickLink:Ljava/lang/String;
    .end local v3           #task:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;
    :catch_0
    move-exception v2

    .line 172
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->stopTimer()V

    .line 174
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    goto :goto_1

    .line 146
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #campaignStarted:Z
    .restart local v1       #clickLink:Ljava/lang/String;
    .restart local v3       #task:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mLinkListener:Lcom/fingersoft/fsadsdk/advertising/LinkListener;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mLinkListener:Lcom/fingersoft/fsadsdk/advertising/LinkListener;

    invoke-interface {v4, v1}, Lcom/fingersoft/fsadsdk/advertising/LinkListener;->canShowAdWithLink(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 148
    :cond_4
    const/4 v4, 0x1

    new-array v5, v4, [Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaigns:Ljava/util/List;

    iget v7, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaignIndex:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;

    aput-object v4, v5, v6

    invoke-virtual {v3, v5}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 149
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v5, "adreceived/fingersoft"

    invoke-virtual {v4, v5}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 150
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mImageView:Landroid/widget/ImageView;

    new-instance v6, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;

    iget-object v7, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaigns:Ljava/util/List;

    iget v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaignIndex:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;

    invoke-direct {v6, p0, v7, v4}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;-><init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;Lcom/fingersoft/fsadsdk/advertising/AdManager;Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const/4 v0, 0x1

    .line 152
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaigns:Ljava/util/List;

    iget v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaignIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->getDislayTime()I

    move-result v4

    const/high16 v5, -0x8000

    if-eq v4, v5, :cond_5

    .line 153
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaigns:Ljava/util/List;

    iget v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaignIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->getDislayTime()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->refreshTimeInMs:J

    .line 154
    :cond_5
    iget-wide v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->refreshTimeInMs:J

    invoke-virtual {p0, v4, v5}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->startCountdown(J)V

    .line 155
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->writeIgnoredAds()V

    goto/16 :goto_0

    .line 159
    :cond_6
    iget v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaignIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaignIndex:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 179
    .end local v0           #campaignStarted:Z
    .end local v1           #clickLink:Ljava/lang/String;
    .end local v3           #task:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " - Calling ad failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->stopTimer()V

    .line 181
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    goto/16 :goto_1
.end method

.method public start(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, campaigns:Ljava/util/List;,"Ljava/util/List<Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;>;"
    const-string v0, "Campaigns retrieved; Showing Ads"

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 386
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->campaigns:Ljava/util/List;

    .line 387
    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->showAd()V

    .line 388
    return-void
.end method

.method startCountdown(J)V
    .locals 6
    .parameter "duration"

    .prologue
    .line 367
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$1;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$1;-><init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;JJ)V

    .line 380
    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    .line 367
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->ctimer:Landroid/os/CountDownTimer;

    .line 381
    return-void
.end method
