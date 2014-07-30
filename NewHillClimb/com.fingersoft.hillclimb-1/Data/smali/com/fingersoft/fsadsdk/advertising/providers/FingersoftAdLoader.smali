.class public Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;
.super Landroid/os/AsyncTask;
.source "FingersoftAdLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/fingersoft/fsadsdk/advertising/AdManager;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;",
        ">;>;"
    }
.end annotation


# instance fields
.field private campaigns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

.field private mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

.field private requestCounter:I


# direct methods
.method public constructor <init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;)V
    .locals 2
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->requestCounter:I

    .line 20
    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->campaigns:Ljava/util/List;

    .line 21
    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    .line 25
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    .line 26
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->doInBackground([Lcom/fingersoft/fsadsdk/advertising/AdManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/fingersoft/fsadsdk/advertising/AdManager;)Ljava/util/List;
    .locals 12
    .parameter "adManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fingersoft/fsadsdk/advertising/AdManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 33
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, locale:Ljava/lang/String;
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, packageName:Ljava/lang/String;
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getPlatformName()Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, platform:Ljava/lang/String;
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getBaseAddress()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->requestCounter:I

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v5}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getCurrentVersionCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v6}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getStartUpCount()I

    move-result v6

    iget-object v7, p0, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v7}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getStartCountWithVersion()I

    move-result v7

    iget-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v8}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getAdditionalParameters()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/fingersoft/fsadsdk/advertising/utils/ApiHelper;->getCampaignUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 37
    .local v11, url:Ljava/lang/String;
    invoke-static {v11}, Lcom/fingersoft/fsadsdk/advertising/utils/HttpUtils;->sendJsonRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 38
    .local v10, response:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "URL called: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Response from server is: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-static {v10, v0}, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->getCampaigns(Ljava/lang/String;Lcom/fingersoft/fsadsdk/advertising/AdManager;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->campaigns:Ljava/util/List;

    .line 41
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->campaigns:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1           #packageName:Ljava/lang/String;
    .end local v2           #locale:Ljava/lang/String;
    .end local v3           #platform:Ljava/lang/String;
    .end local v10           #response:Ljava/lang/String;
    .end local v11           #url:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v9

    .line 43
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    const-string v0, "ERROR: Failed to get campaigns"

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
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
    .line 52
    .local p1, campaigns:Ljava/util/List;,"Ljava/util/List<Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;>;"
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/FingersoftAdLoader;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    invoke-virtual {v0, p1}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->start(Ljava/util/List;)V

    .line 56
    :cond_0
    return-void
.end method
