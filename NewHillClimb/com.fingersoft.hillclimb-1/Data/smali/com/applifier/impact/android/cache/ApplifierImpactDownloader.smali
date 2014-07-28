.class public Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;
.super Ljava/lang/Object;
.source "ApplifierImpactDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;,
        Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$applifier$impact$android$cache$ApplifierImpactDownloader$ApplifierDownloadEventType:[I

.field private static _cacheDownloads:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;",
            ">;"
        }
    .end annotation
.end field

.field private static _downloadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;",
            ">;"
        }
    .end annotation
.end field

.field private static _downloadListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/applifier/impact/android/cache/IApplifierImpactDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private static _isDownloading:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$applifier$impact$android$cache$ApplifierImpactDownloader$ApplifierDownloadEventType()[I
    .locals 3

    .prologue
    .line 21
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->$SWITCH_TABLE$com$applifier$impact$android$cache$ApplifierImpactDownloader$ApplifierDownloadEventType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;->values()[Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;->DownloadCancelled:Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

    invoke-virtual {v1}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;->DownloadCompleted:Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

    invoke-virtual {v1}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->$SWITCH_TABLE$com$applifier$impact$android$cache$ApplifierImpactDownloader$ApplifierDownloadEventType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    sput-object v1, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadList:Ljava/util/ArrayList;

    .line 24
    sput-object v1, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadListeners:Ljava/util/ArrayList;

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_isDownloading:Z

    .line 27
    sput-object v1, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_cacheDownloads:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 1
    .parameter

    .prologue
    .line 163
    invoke-static {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->getOutputStreamFor(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1()V
    .locals 0

    .prologue
    .line 153
    invoke-static {}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->cacheNextFile()V

    return-void
.end method

.method static synthetic access$2(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-static {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->removeDownload(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V

    return-void
.end method

.method static synthetic access$3(Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    invoke-static {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->removeFromCacheDownloads(Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;)V

    return-void
.end method

.method static synthetic access$4(Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-static {p0, p1}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->sendToListeners(Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;Ljava/lang/String;)V

    return-void
.end method

.method public static addDownload(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V
    .locals 1
    .parameter "downloadCampaign"

    .prologue
    .line 30
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadList:Ljava/util/ArrayList;

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->isInDownloads(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_1
    sget-boolean v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_isDownloading:Z

    if-nez v0, :cond_2

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_isDownloading:Z

    .line 38
    invoke-static {}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->cacheNextFile()V

    .line 40
    :cond_2
    return-void
.end method

.method public static addListener(Lcom/applifier/impact/android/cache/IApplifierImpactDownloadListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 43
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadListeners:Ljava/util/ArrayList;

    .line 44
    :cond_0
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_1
    return-void
.end method

.method private static addToCacheDownloads(Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;)V
    .locals 1
    .parameter "cd"

    .prologue
    .line 180
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_cacheDownloads:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_cacheDownloads:Ljava/util/Vector;

    .line 183
    :cond_0
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_cacheDownloads:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method private static cacheCampaign(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V
    .locals 5
    .parameter "campaign"

    .prologue
    const/4 v4, 0x1

    .line 129
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 133
    .local v1, cm:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_3

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting download for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;

    invoke-static {v2, v3}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    .line 136
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 137
    new-instance v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;

    invoke-direct {v0, p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;-><init>(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V

    .line 138
    .local v0, cd:Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;
    invoke-static {v0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->addToCacheDownloads(Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;)V

    .line 139
    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 142
    .end local v0           #cd:Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;
    :cond_2
    invoke-static {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->removeDownload(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V

    goto :goto_0

    .line 146
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No WIFI detected, not downloading: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;

    invoke-static {v2, v3}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    .line 147
    invoke-static {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->removeDownload(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V

    .line 148
    sget-object v2, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;->DownloadCancelled:Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->sendToListeners(Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->cacheNextFile()V

    goto/16 :goto_0
.end method

.method private static cacheNextFile()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 155
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-static {v0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->cacheCampaign(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 158
    sput-boolean v1, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_isDownloading:Z

    .line 159
    const-string v0, "All downloads completed."

    const-class v1, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;

    invoke-static {v0, v1}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static clearData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_cacheDownloads:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_cacheDownloads:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 67
    sput-object v1, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_cacheDownloads:Ljava/util/Vector;

    .line 70
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_isDownloading:Z

    .line 72
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    sput-object v1, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadListeners:Ljava/util/ArrayList;

    .line 76
    :cond_1
    return-void
.end method

.method private static getOutputStreamFor(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 7
    .parameter "fileName"

    .prologue
    .line 164
    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->createCacheDir()Ljava/io/File;

    move-result-object v4

    .line 165
    .local v4, tdir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    .local v3, outf:Ljava/io/File;
    const/4 v1, 0x0

    .line 169
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 176
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :goto_0
    return-object v2

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Problems creating FOS: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;

    invoke-static {v5, v6}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    .line 173
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isInDownloads(Ljava/lang/String;)Z
    .locals 3
    .parameter "downloadUrl"

    .prologue
    .line 98
    sget-object v1, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 99
    sget-object v1, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 107
    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 99
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    .line 100
    .local v0, download:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    const/4 v1, 0x1

    goto :goto_1

    .line 102
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 103
    :cond_4
    sget-object v2, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static removeDownload(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V
    .locals 3
    .parameter "campaign"

    .prologue
    .line 82
    sget-object v2, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const/4 v1, -0x1

    .line 86
    .local v1, removeIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 93
    :goto_2
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 94
    sget-object v2, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 87
    :cond_2
    sget-object v2, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    move v1, v0

    .line 89
    goto :goto_2

    .line 86
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static removeFromCacheDownloads(Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;)V
    .locals 1
    .parameter "cd"

    .prologue
    .line 187
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_cacheDownloads:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_cacheDownloads:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    return-void
.end method

.method public static removeListener(Lcom/applifier/impact/android/cache/IApplifierImpactDownloadListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 49
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static sendToListeners(Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;Ljava/lang/String;)V
    .locals 5
    .parameter "type"
    .parameter "downloadUrl"

    .prologue
    .line 111
    sget-object v2, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 126
    :cond_0
    return-void

    .line 114
    :cond_1
    sget-object v2, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_downloadListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 116
    .local v1, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/applifier/impact/android/cache/IApplifierImpactDownloadListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applifier/impact/android/cache/IApplifierImpactDownloadListener;

    .line 117
    .local v0, listener:Lcom/applifier/impact/android/cache/IApplifierImpactDownloadListener;
    invoke-static {}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->$SWITCH_TABLE$com$applifier$impact$android$cache$ApplifierImpactDownloader$ApplifierDownloadEventType()[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 119
    :pswitch_0
    invoke-interface {v0, p1}, Lcom/applifier/impact/android/cache/IApplifierImpactDownloadListener;->onFileDownloadCompleted(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-interface {v0, p1}, Lcom/applifier/impact/android/cache/IApplifierImpactDownloadListener;->onFileDownloadCancelled(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static stopAllDownloads()V
    .locals 3

    .prologue
    .line 56
    sget-object v1, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_cacheDownloads:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 57
    const-string v1, "ApplifierImpactDownloader->stopAllDownloads()"

    const-class v2, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;

    invoke-static {v1, v2}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    .line 58
    sget-object v1, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->_cacheDownloads:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, cd:Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    :cond_0
    return-void

    .line 58
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cd:Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;
    check-cast v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;

    .line 59
    .restart local v0       #cd:Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->cancel(Z)Z

    goto :goto_0
.end method
