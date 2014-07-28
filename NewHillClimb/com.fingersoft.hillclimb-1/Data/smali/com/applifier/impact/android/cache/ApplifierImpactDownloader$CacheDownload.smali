.class Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;
.super Landroid/os/AsyncTask;
.source "ApplifierImpactDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheDownload"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private _campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

.field private _cancelled:Z

.field private _downloadLength:I

.field private _downloadUrl:Ljava/net/URL;

.field private _input:Ljava/io/InputStream;

.field private _output:Ljava/io/OutputStream;

.field private _urlConnection:Ljava/net/URLConnection;


# direct methods
.method public constructor <init>(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V
    .locals 2
    .parameter "campaign"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 203
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 195
    iput-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_downloadUrl:Ljava/net/URL;

    .line 196
    iput-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_input:Ljava/io/InputStream;

    .line 197
    iput-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_output:Ljava/io/OutputStream;

    .line 198
    iput v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_downloadLength:I

    .line 199
    iput-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_urlConnection:Ljava/net/URLConnection;

    .line 200
    iput-boolean v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_cancelled:Z

    .line 201
    iput-object v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    .line 204
    iput-object p1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    .line 205
    return-void
.end method

.method private cancelDownload()V
    .locals 3

    .prologue
    .line 323
    const-string v0, "ERROR"

    .line 324
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_downloadUrl:Ljava/net/URL;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_downloadUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Download cancelled for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    invoke-direct {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->closeAndFlushConnection()V

    .line 329
    iget-object v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpactUtils;->removeFile(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    #calls: Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->removeDownload(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V
    invoke-static {v1}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->access$2(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V

    .line 331
    #calls: Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->removeFromCacheDownloads(Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;)V
    invoke-static {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->access$3(Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;)V

    .line 332
    sget-object v1, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;->DownloadCancelled:Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

    #calls: Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->sendToListeners(Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->access$4(Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method private closeAndFlushConnection()V
    .locals 3

    .prologue
    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 314
    iget-object v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 315
    iget-object v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems closing connection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "sUrl"

    .prologue
    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 210
    .local v5, startTime:J
    const-wide/16 v2, 0x0

    .line 213
    .local v2, duration:J
    :try_start_0
    new-instance v9, Ljava/net/URL;

    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_downloadUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :try_start_1
    iget-object v9, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_downloadUrl:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    iput-object v9, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_urlConnection:Ljava/net/URLConnection;

    .line 223
    iget-object v9, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_urlConnection:Ljava/net/URLConnection;

    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 224
    iget-object v9, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_urlConnection:Ljava/net/URLConnection;

    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 225
    iget-object v9, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v9}, Ljava/net/URLConnection;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 231
    :goto_0
    iget-object v9, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_urlConnection:Ljava/net/URLConnection;

    if-eqz v9, :cond_2

    .line 232
    iget-object v9, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v9}, Ljava/net/URLConnection;->getContentLength()I

    move-result v9

    iput v9, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_downloadLength:I

    .line 235
    :try_start_2
    new-instance v9, Ljava/io/BufferedInputStream;

    iget-object v10, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_downloadUrl:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v9, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_input:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 241
    :goto_1
    iget-object v9, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v9}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->getOutputStreamFor(Ljava/lang/String;)Ljava/io/FileOutputStream;
    invoke-static {v9}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->access$0(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v9

    iput-object v9, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_output:Ljava/io/OutputStream;

    .line 242
    iget-object v9, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_output:Ljava/io/OutputStream;

    if-nez v9, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->onCancelled()V

    .line 245
    :cond_0
    const/16 v9, 0x400

    new-array v1, v9, [B

    .line 246
    .local v1, data:[B
    const-wide/16 v7, 0x0

    .line 247
    .local v7, total:J
    const/4 v0, 0x0

    .line 250
    .local v0, count:I
    :cond_1
    :try_start_3
    iget-object v9, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_input:Ljava/io/InputStream;

    invoke-virtual {v9, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    const/4 v9, -0x1

    if-ne v0, v9, :cond_3

    .line 267
    invoke-direct {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->closeAndFlushConnection()V

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v2, v9, v5

    .line 269
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "File: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v10}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " of size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " downloaded in: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    .end local v0           #count:I
    .end local v1           #data:[B
    .end local v7           #total:J
    :cond_2
    const/4 v9, 0x0

    :goto_2
    return-object v9

    .line 215
    :catch_0
    move-exception v4

    .line 216
    .local v4, e:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Problems with url: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->onCancelled()V

    .line 218
    const/4 v9, 0x0

    goto :goto_2

    .line 227
    .end local v4           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 228
    .restart local v4       #e:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Problems opening connection: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 237
    .end local v4           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 238
    .restart local v4       #e:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Problems opening stream: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 251
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v0       #count:I
    .restart local v1       #data:[B
    .restart local v7       #total:J
    :cond_3
    int-to-long v9, v0

    add-long/2addr v7, v9

    .line 252
    const/4 v9, 0x1

    :try_start_4
    new-array v9, v9, [Ljava/lang/Integer;

    const/4 v10, 0x0

    const-wide/16 v11, 0x64

    mul-long/2addr v11, v7

    iget v13, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_downloadLength:I

    int-to-long v13, v13

    div-long/2addr v11, v13

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->publishProgress([Ljava/lang/Object;)V

    .line 253
    iget-object v9, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_output:Ljava/io/OutputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 255
    iget-boolean v9, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_cancelled:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v9, :cond_1

    .line 256
    const/4 v9, 0x0

    goto :goto_2

    .line 260
    :catch_3
    move-exception v4

    .line 261
    .restart local v4       #e:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Problems downloading file: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    invoke-direct {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->cancelDownload()V

    .line 263
    #calls: Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->cacheNextFile()V
    invoke-static {}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->access$1()V

    .line 264
    const/4 v9, 0x0

    goto/16 :goto_2
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 277
    const-string v0, "Force stopping download!"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_cancelled:Z

    .line 279
    invoke-direct {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->cancelDownload()V

    .line 280
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 284
    iget-boolean v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_cancelled:Z

    if-nez v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    #calls: Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->removeDownload(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V
    invoke-static {v1}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->access$2(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V

    .line 286
    #calls: Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->removeFromCacheDownloads(Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;)V
    invoke-static {p0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->access$3(Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;)V

    .line 287
    #calls: Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->cacheNextFile()V
    invoke-static {}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->access$1()V

    .line 289
    const-string v0, "ERROR"

    .line 290
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_downloadUrl:Ljava/net/URL;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->_downloadUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    :cond_0
    sget-object v1, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;->DownloadCompleted:Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

    #calls: Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->sendToListeners(Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->access$4(Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;Ljava/lang/String;)V

    .line 294
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 296
    .end local v0           #url:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 300
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 301
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 307
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 309
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$CacheDownload;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
