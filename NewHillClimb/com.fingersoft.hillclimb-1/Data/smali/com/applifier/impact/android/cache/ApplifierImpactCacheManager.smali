.class public Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;
.super Ljava/lang/Object;
.source "ApplifierImpactCacheManager.java"

# interfaces
.implements Lcom/applifier/impact/android/campaign/IApplifierImpactCampaignHandlerListener;


# instance fields
.field private _amountPrepared:I

.field private _downloadListener:Lcom/applifier/impact/android/cache/IApplifierImpactCacheListener;

.field private _downloadingHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;",
            ">;"
        }
    .end annotation
.end field

.field private _handlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;",
            ">;"
        }
    .end annotation
.end field

.field private _totalCampaigns:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadListener:Lcom/applifier/impact/android/cache/IApplifierImpactCacheListener;

    .line 15
    iput-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    .line 16
    iput-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_handlers:Ljava/util/ArrayList;

    .line 17
    iput v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_amountPrepared:I

    .line 18
    iput v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_totalCampaigns:I

    .line 22
    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->canUseExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "External storagedir: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " created with result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->createCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    const-string v0, "Could not create cache, no external memory present"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private addToDownloadingHandlers(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;)V
    .locals 1
    .parameter "campaignHandler"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method private addToUpdatingHandlers(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;)V
    .locals 1
    .parameter "campaignHandler"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_handlers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_handlers:Ljava/util/ArrayList;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_handlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method private removeFromDownloadingHandlers(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;)V
    .locals 1
    .parameter "campaignHandler"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    return-void
.end method

.method private removeFromUpdatingHandlers(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;)V
    .locals 1
    .parameter "campaignHandler"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_handlers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_handlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public cacheNextVideo(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V
    .locals 1
    .parameter "campaign"

    .prologue
    .line 117
    new-instance v0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;

    invoke-direct {v0, p1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;-><init>(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V

    .line 118
    .local v0, campaignHandler:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;
    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->downloadCampaign()V

    .line 119
    return-void
.end method

.method public clearData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-object v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadListener:Lcom/applifier/impact/android/cache/IApplifierImpactCacheListener;

    if-eqz v1, :cond_0

    .line 87
    iput-object v3, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadListener:Lcom/applifier/impact/android/cache/IApplifierImpactCacheListener;

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 96
    iget-object v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 97
    iput-object v3, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_handlers:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_handlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 107
    iget-object v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_handlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 108
    iput-object v3, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_handlers:Ljava/util/ArrayList;

    .line 110
    :cond_2
    return-void

    .line 90
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;

    .line 91
    .local v0, ch:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;
    invoke-virtual {v0, v3}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->setListener(Lcom/applifier/impact/android/campaign/IApplifierImpactCampaignHandlerListener;)V

    .line 92
    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->clearData()V

    goto :goto_0

    .line 101
    .end local v0           #ch:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;

    .line 102
    .restart local v0       #ch:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;
    invoke-virtual {v0, v3}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->setListener(Lcom/applifier/impact/android/campaign/IApplifierImpactCampaignHandlerListener;)V

    .line 103
    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->clearData()V

    goto :goto_1
.end method

.method public hasDownloadingHandlers()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initCache(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;>;"
    invoke-virtual {p0, p1}, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->updateCache(Ljava/util/ArrayList;)V

    .line 40
    return-void
.end method

.method public isCampaignCached(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)Z
    .locals 1
    .parameter "campaign"

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->isFileInCache(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onCampaignHandled(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;)V
    .locals 2
    .parameter "campaignHandler"

    .prologue
    .line 125
    iget v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_amountPrepared:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_amountPrepared:I

    .line 126
    invoke-direct {p0, p1}, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->removeFromDownloadingHandlers(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->removeFromUpdatingHandlers(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;)V

    .line 128
    iget-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadListener:Lcom/applifier/impact/android/cache/IApplifierImpactCacheListener;

    invoke-interface {v0, p1}, Lcom/applifier/impact/android/cache/IApplifierImpactCacheListener;->onCampaignReady(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;)V

    .line 130
    iget v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_amountPrepared:I

    iget v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_totalCampaigns:I

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadListener:Lcom/applifier/impact/android/cache/IApplifierImpactCacheListener;

    invoke-interface {v0}, Lcom/applifier/impact/android/cache/IApplifierImpactCacheListener;->onAllCampaignsReady()V

    .line 132
    :cond_0
    return-void
.end method

.method public setDownloadListener(Lcom/applifier/impact/android/cache/IApplifierImpactCacheListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadListener:Lcom/applifier/impact/android/cache/IApplifierImpactCacheListener;

    .line 32
    return-void
.end method

.method public updateCache(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;>;"
    const/4 v5, 0x0

    .line 43
    iget-object v6, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadListener:Lcom/applifier/impact/android/cache/IApplifierImpactCacheListener;

    if-eqz v6, :cond_0

    .line 44
    iget-object v6, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_downloadListener:Lcom/applifier/impact/android/cache/IApplifierImpactCacheListener;

    invoke-interface {v6}, Lcom/applifier/impact/android/cache/IApplifierImpactCacheListener;->onCampaignUpdateStarted()V

    .line 46
    :cond_0
    iput v5, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_amountPrepared:I

    .line 48
    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    :cond_1
    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 53
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, dir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 56
    .local v4, fileList:[Ljava/io/File;
    if-eqz v4, :cond_2

    .line 57
    array-length v6, v4

    :goto_0
    if-lt v5, v6, :cond_5

    .line 69
    .end local v3           #dir:Ljava/io/File;
    .end local v4           #fileList:[Ljava/io/File;
    :cond_2
    if-eqz p1, :cond_4

    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_totalCampaigns:I

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Updating cache: Going through active campaigns: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->_totalCampaigns:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 83
    :cond_4
    return-void

    .line 57
    .restart local v3       #dir:Ljava/io/File;
    .restart local v4       #fileList:[Ljava/io/File;
    :cond_5
    aget-object v2, v4, v5

    .line 58
    .local v2, currentFile:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Checking file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "pendingrequests.dat"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 60
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "manifest.json"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 61
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/applifier/impact/android/ApplifierImpactUtils;->isFileRequiredByCampaigns(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/applifier/impact/android/ApplifierImpactUtils;->removeFile(Ljava/lang/String;)V

    .line 57
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 72
    .end local v2           #currentFile:Ljava/io/File;
    .end local v3           #dir:Ljava/io/File;
    .end local v4           #fileList:[Ljava/io/File;
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    .line 73
    .local v0, campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    new-instance v1, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;

    invoke-direct {v1, v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;-><init>(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V

    .line 74
    .local v1, campaignHandler:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;
    invoke-direct {p0, v1}, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->addToUpdatingHandlers(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;)V

    .line 75
    invoke-virtual {v1, p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->setListener(Lcom/applifier/impact/android/campaign/IApplifierImpactCampaignHandlerListener;)V

    .line 76
    invoke-virtual {v1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->initCampaign()V

    .line 78
    invoke-virtual {v1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->hasDownloads()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 79
    invoke-direct {p0, v1}, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->addToDownloadingHandlers(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;)V

    goto :goto_1
.end method
