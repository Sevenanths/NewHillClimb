.class public Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;
.super Ljava/lang/Object;
.source "ApplifierImpactCampaignHandler.java"

# interfaces
.implements Lcom/applifier/impact/android/cache/IApplifierImpactDownloadListener;


# instance fields
.field private _cacheSolvedMillis:J

.field private _cacheStartMillis:J

.field private _campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

.field private _downloadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _handlerListener:Lcom/applifier/impact/android/campaign/IApplifierImpactCampaignHandlerListener;


# direct methods
.method public constructor <init>(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V
    .locals 3
    .parameter "campaign"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    .line 16
    iput-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    .line 17
    iput-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_handlerListener:Lcom/applifier/impact/android/campaign/IApplifierImpactCampaignHandlerListener;

    .line 18
    iput-wide v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_cacheStartMillis:J

    .line 19
    iput-wide v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_cacheSolvedMillis:J

    .line 24
    iput-object p1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    .line 25
    return-void
.end method

.method private addCampaignToDownloads()V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    if-nez v1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v2}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_cacheStartMillis:J

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v0, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "eventValue"

    const-string v2, "start"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-static {v1, v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->gaInstrumentationVideoCaching(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;Ljava/util/Map;)V

    .line 179
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-static {v1}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->addDownload(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V

    goto :goto_0
.end method

.method private checkFileAndDownloadIfNeeded(Ljava/lang/String;)V
    .locals 1
    .parameter "fileUrl"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->shouldCacheVideo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->isFileInCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->canUseExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->hasDownloads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-static {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->addListener(Lcom/applifier/impact/android/cache/IApplifierImpactDownloadListener;)V

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->addCampaignToDownloads()V

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->shouldCacheVideo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->isFileOk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->canUseExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const-string v0, "The file was not okay, redownloading"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->removeFile(Ljava/lang/String;)V

    .line 144
    invoke-static {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->addListener(Lcom/applifier/impact/android/cache/IApplifierImpactDownloadListener;)V

    .line 145
    invoke-direct {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->addCampaignToDownloads()V

    goto :goto_0
.end method

.method private finishDownload(Ljava/lang/String;)Z
    .locals 2
    .parameter "downloadUrl"

    .prologue
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_cacheSolvedMillis:J

    .line 123
    invoke-direct {p0, p1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->removeDownload(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_handlerListener:Lcom/applifier/impact/android/campaign/IApplifierImpactCampaignHandlerListener;

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->removeListener(Lcom/applifier/impact/android/cache/IApplifierImpactDownloadListener;)V

    .line 128
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFileOk(Ljava/lang/String;)Z
    .locals 12
    .parameter "fileUrl"

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 150
    iget-object v6, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v6}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/applifier/impact/android/ApplifierImpactUtils;->getSizeForLocalFile(Ljava/lang/String;)J

    move-result-wide v2

    .line 151
    .local v2, localSize:J
    iget-object v6, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v6}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoFileExpectedSize()J

    move-result-wide v0

    .line 153
    .local v0, expectedSize:J
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isFileOk: localSize="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", expectedSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    cmp-long v6, v2, v8

    if-nez v6, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v4

    .line 158
    :cond_1
    cmp-long v6, v0, v8

    if-nez v6, :cond_2

    move v4, v5

    .line 159
    goto :goto_0

    .line 161
    :cond_2
    cmp-long v6, v2, v10

    if-lez v6, :cond_0

    cmp-long v6, v0, v10

    if-lez v6, :cond_0

    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    move v4, v5

    .line 162
    goto :goto_0
.end method

.method private removeDownload(Ljava/lang/String;)V
    .locals 3
    .parameter "downloadUrl"

    .prologue
    .line 183
    iget-object v2, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const/4 v1, -0x1

    .line 187
    .local v1, removeIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 194
    :goto_2
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 188
    :cond_2
    iget-object v2, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 189
    move v1, v0

    .line 190
    goto :goto_2

    .line 187
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clearData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_handlerListener:Lcom/applifier/impact/android/campaign/IApplifierImpactCampaignHandlerListener;

    if-eqz v0, :cond_0

    .line 106
    iput-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_handlerListener:Lcom/applifier/impact/android/campaign/IApplifierImpactCampaignHandlerListener;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->clearData()V

    .line 114
    iput-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    .line 116
    :cond_2
    return-void
.end method

.method public downloadCampaign()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->isFileInCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->canUseExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->hasDownloads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-static {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->addListener(Lcom/applifier/impact/android/cache/IApplifierImpactDownloadListener;)V

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->addCampaignToDownloads()V

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->isFileOk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->canUseExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->hasDownloads()Z

    move-result v0

    if-nez v0, :cond_3

    .line 96
    invoke-static {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->addListener(Lcom/applifier/impact/android/cache/IApplifierImpactDownloadListener;)V

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->removeFile(Ljava/lang/String;)V

    .line 99
    invoke-static {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->addListener(Lcom/applifier/impact/android/cache/IApplifierImpactDownloadListener;)V

    .line 100
    invoke-direct {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->addCampaignToDownloads()V

    goto :goto_0
.end method

.method public getCachingDurationInMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 36
    iget-wide v2, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_cacheStartMillis:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_cacheSolvedMillis:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 37
    iget-wide v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_cacheSolvedMillis:J

    iget-wide v2, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_cacheStartMillis:J

    sub-long/2addr v0, v2

    .line 40
    :cond_0
    return-wide v0
.end method

.method public getCampaign()Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    return-object v0
.end method

.method public hasDownloads()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

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

.method public initCampaign()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->checkFileAndDownloadIfNeeded(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_handlerListener:Lcom/applifier/impact/android/campaign/IApplifierImpactCampaignHandlerListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_handlerListener:Lcom/applifier/impact/android/campaign/IApplifierImpactCampaignHandlerListener;

    invoke-interface {v0, p0}, Lcom/applifier/impact/android/campaign/IApplifierImpactCampaignHandlerListener;->onCampaignHandled(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onFileDownloadCancelled(Ljava/lang/String;)V
    .locals 3
    .parameter "downloadUrl"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->finishDownload(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Download cancelled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v2}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v0, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "eventValue"

    const-string v2, "failed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-static {v1, v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->gaInstrumentationVideoCaching(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;Ljava/util/Map;)V

    .line 70
    .end local v0           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public onFileDownloadCompleted(Ljava/lang/String;)V
    .locals 4
    .parameter "downloadUrl"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->finishDownload(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reporting campaign download completion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v2}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v0, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "eventValue"

    const-string v2, "completed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "cachingDuration"

    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->getCachingDurationInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-static {v1, v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->gaInstrumentationVideoCaching(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;Ljava/util/Map;)V

    .line 58
    .end local v0           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public setListener(Lcom/applifier/impact/android/campaign/IApplifierImpactCampaignHandlerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->_handlerListener:Lcom/applifier/impact/android/campaign/IApplifierImpactCampaignHandlerListener;

    .line 45
    return-void
.end method
